import random
import sqlite3
from collections import OrderedDict
from tqdm import tqdm

# To make our versions I made use of the original methods they used to populate the db, but edited them slightly.
# My versions are shown in the following file in the import.
from my_versions_of_originals import Column, TSV_TABLE_MAP, create_table_sql

# Basically just copied from the IMDB code to allow us to more easily make smaller db's.
# The database can be found and downloaded here: https://pypi.org/project/imdb-sqlite/

# Order that we need to add everything is:
# 1. title that we are adding. Many other foreign keys depend on this
# 2. people - Look through crew of that title to add all people involved.
# 3. crew - We just looked through the crew, might as well. We also have the FK constraints now that we have both title and person.
# 4. akas - Just going through them arbitrarily, the important dependncies are taken care of
# 5. ratings
# note -> episodes - we aren't actually doing episodes because thats really weird right now
# There is probably a way to more nicely fill all the custom inputs out but its fine for right now

def add_all_relevant_from_title_id(title_id: str, imdb_conn, target_conn):
    imdb_cur = imdb_conn.cursor()
    target_cur = target_conn.cursor()

    # Query to get the full set of info from the target title
    title_data_query = (f"SELECT * FROM titles "
                        f"WHERE title_id='{title_id}';")
    imdb_cur.execute(title_data_query)
    title_data = imdb_cur.fetchall()[0]

    # Add the title to the list
    insert_title = (
        "INSERT OR IGNORE INTO titles (title_id, type, primary_title, original_title, is_adult, premiered, ended, runtime_minutes, genres) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);"
    )
    # This is just the format to add title to the list. We commit it to add the title early so we can have foreign keys.
    t_inputs = (title_data[0], title_data[1], title_data[2], title_data[3], title_data[4], title_data[5], title_data[6], title_data[7], title_data[8])
    target_cur.execute(insert_title, t_inputs)
    target_conn.commit()



    # Next we get the crew that was in the film so we can get the set of people (to then meet people FK's)
    crew_data_query = (f"SELECT * FROM crew "
                        f"WHERE title_id='{title_id}';")

    imdb_cur.execute(crew_data_query)
    crew_data = imdb_cur.fetchall()

    # Go through each crew member
    for crewmember in crew_data:
        # position 0 is title id, postition 1 is person id. we want person id.
        member = crewmember[1]

        # We query to find that person by their id
        person_data_query = (f"SELECT * FROM people "
                           f"WHERE person_id='{member}';")

        imdb_cur.execute(person_data_query)
        person_data = imdb_cur.fetchall()

        # It should only be 1 person but if it is 0 this is just a failsafe.
        # We insert that person into the target db
        for person in person_data:
            insert_person = (
                "INSERT OR IGNORE INTO people (person_id, name, born, died) "
                "VALUES (?, ?, ?, ?);"
            )

            p_inputs = (person[0], person[1], person[2], person[3])

            target_cur.execute(insert_person, p_inputs)

        # Add the crew into the db
        insert_crew = (
            "INSERT OR IGNORE INTO crew (title_id, person_id, category, job, characters) "
            "VALUES (?, ?, ?, ?, ?);"
        )

        c_inputs = (crewmember[0], crewmember[1], crewmember[2], crewmember[3], crewmember[4])
        target_cur.execute(insert_crew, c_inputs)

        # Commit after adding people and crew to the list
        target_conn.commit()


    # get akas
    akas_data_query = (f"SELECT * FROM akas "
                       f"WHERE title_id='{title_id}';")

    imdb_cur.execute(akas_data_query)
    akas_data = imdb_cur.fetchall()

    # Insert all aka's into the target db
    for akas in akas_data:
        insert_akas = (
            "INSERT OR IGNORE INTO akas (title_id, title, region, language, types, attributes, is_original_title) "
            "VALUES (?, ?, ?, ?, ?, ?, ?);"
        )

        akas_inputs = (akas[0], akas[1], akas[2], akas[3], akas[4], akas[5], akas[6])
        target_cur.execute(insert_akas, akas_inputs)

    # Commit after adding all aka's to the list
    target_conn.commit()


    # get ratings
    ratings_data_query = (f"SELECT * FROM ratings "
                       f"WHERE title_id='{title_id}';")

    imdb_cur.execute(ratings_data_query)
    ratings_data = imdb_cur.fetchall()

    for rating in ratings_data:
        insert_ratings = (
            "INSERT OR IGNORE INTO ratings (title_id, rating, votes) "
            "VALUES (?, ?, ?);"
        )

        r_inputs = (rating[0], rating[1], rating[2])
        target_cur.execute(insert_ratings, r_inputs)

    # Commit after adding all ratings to the list
    target_conn.commit()


# Populates a new db from a target database. Was made specifically for the imdb db
def populate_db_from_imdb(num_instances: int, source_db: str='imdb.db', target_db:str=None):
    # If there is no target db just name it after the number of instances we are copying
    if target_db is None:
        target_db = f"imdb-{num_instances}.db"

    target_conn = sqlite3.connect(target_db)
    target_cur = target_conn.cursor()

    # Enable foreign keys
    target_conn.executescript("""
                PRAGMA encoding="UTF-8";
                PRAGMA foreign_keys=ON;
                PRAGMA synchronous=OFF;
            """)

    imdb_conn = sqlite3.connect(source_db)
    imdb_cur = imdb_conn.cursor()

    sqls = [create_table_sql(table, mapping.values())
            for table, mapping in TSV_TABLE_MAP.values()]
    sql = '\n'.join(sqls)

    target_conn.executescript(sql)

    query = ("SELECT title_id FROM titles;")

    imdb_cur.execute(query)
    title_ids = imdb_cur.fetchall()

    # Get a randomly gathered set in the range that we want
    random_sample = random.sample(range(0, len(title_ids)), num_instances)
    for rand in tqdm(random_sample):
        add_all_relevant_from_title_id(title_ids[rand][0], imdb_conn, target_conn)

    print("done")


# Run main to create the three relevant databases with the 100k, 10k and 1k titles.
if __name__ == '__main__':

    # This is with the assumption that you have the imdb.db installed. It will not populate from the imdb database if
    # you do not have it installed of course. It populates the new smaller db with the data from the previous db so we
    # can ensure that the data in it makes use of the same instances, only with more or less instances.

    populate_db_from_imdb(100000, 'imdb.db', 'imdb-100k.db')
    populate_db_from_imdb(10000, 'imdb-100k.db', 'imdb-10k.db')
    populate_db_from_imdb(1000, 'imdb-10k.db', 'imdb-1k.db')


