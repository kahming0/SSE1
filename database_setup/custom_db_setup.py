from collections import OrderedDict

# This is based off of all the imdb setup from here: https://pypi.org/project/imdb-sqlite/
# I needed to slightly change the setup for our purposes so that is what this file is for.
# The main changes are introduction of foreign keys and slightly changing the setup files.
# Episodes are also a bit awkward to set up right now so we are not doing that.

class Column:
    """Table column configuration"""
    def __init__(self, name, type='VARCHAR', pk=None, index=None, unique=None, null=True, fk=False, ttable=None, tname=None):
        self.name = name
        self.type = type
        self.pk = pk
        self.index = index
        self.unique = unique
        self.null = null
        self.fk = fk
        self.ttable = ttable
        self.tname = tname

def create_table_sql(table_name, columns):
    lines = ['CREATE TABLE %s (' % table_name]

    # Declare columns
    cols = ('  {name} {type}{pk}{unique}{null}'.format(
        name=c.name,
        type=c.type,
        pk=(' PRIMARY KEY' if c.pk else ''),
        unique=(' UNIQUE' if c.unique and not c.pk else ''),
        null=(' NOT NULL' if c.pk or not c.null else '')
    ) for c in columns)

    # We have to put the foreign key stuff at the end for some reason or it just breaks
    f_cols = []
    for fc in columns:
        if not fc.fk:
            continue
        else:
            f_cols.append(("  FOREIGN KEY ({name}) REFERENCES {target_table}({target_name})").format(
                name=fc.name,
                target_table=fc.ttable,
                target_name=fc.tname
            ))

    lines.append(',\n'.join(cols))

    # Only add if there are foreign keys
    if len(f_cols) > 0:
        lines.append(',')
        lines.append(',\n'.join(f_cols))

    lines.append(');')

    return '\n'.join(lines) + '\n'


TSV_TABLE_MAP = OrderedDict([
    ('name.basics.tsv.gz',
        ('people', OrderedDict([
            ('nconst',            Column(name='person_id', type='VARCHAR', pk=True)),
            ('primaryName',       Column(name='name', type='VARCHAR')),
            ('birthYear',         Column(name='born', type='INTEGER')),
            ('deathYear',         Column(name='died', type='INTEGER')),
        ]))),
    ('title.basics.tsv.gz',
        ('titles', OrderedDict([
            ('tconst',            Column(name='title_id', type='VARCHAR', pk=True)),
            ('titleType',         Column(name='type', type='VARCHAR')),
            ('primaryTitle',      Column(name='primary_title', type='VARCHAR')),
            ('originalTitle',     Column(name='original_title', type='VARCHAR')),
            ('isAdult',           Column(name='is_adult', type='INTEGER')),
            ('startYear',         Column(name='premiered', type='INTEGER')),
            ('endYear',           Column(name='ended', type='INTEGER')),
            ('runtimeMinutes',    Column(name='runtime_minutes', type='INTEGER')),
            ('genres',            Column(name='genres')),
        ]))),
    ('title.akas.tsv.gz',
        ('akas', OrderedDict([
            ('titleId',           Column(name='title_id', fk=True, ttable="titles", tname="title_id")),
            ('title',             Column(name='title')),
            ('region',            Column(name='region')),
            ('language',          Column(name='language')),
            ('types',             Column(name='types')),
            ('attributes',        Column(name='attributes')),
            ('isOriginalTitle',   Column(name='is_original_title', type='INTEGER')),
        ]))),
    ('title.principals.tsv.gz',
        ('crew', OrderedDict([
            ('tconst',            Column(name='title_id', type='VARCHAR', fk=True, ttable="titles", tname="title_id")),
            ('nconst',            Column(name='person_id', fk=True, ttable="people", tname="person_id")),
            ('category',          Column(name='category')),
            ('job',               Column(name='job')),
            ('characters',        Column(name='characters')),
        ]))),
    # ('title.episode.tsv.gz',
    #     ('episodes', OrderedDict([
    #         ('tconst',            Column(name='episode_title_id', fk=True, ttable="titles", tname="title_id")),
    #         ('parentTconst',      Column(name='show_title_id', fk=True, ttable="titles", tname="title_id")),
    #         ('seasonNumber',      Column(name='season_number', type='INTEGER')),
    #         ('episodeNumber',     Column(name='episode_number', type='INTEGER')),
    #     ]))),
    ('title.ratings.tsv.gz',
        ('ratings', OrderedDict([
            ('tconst',            Column(name='title_id', type='VARCHAR', fk=True, ttable="titles", tname="title_id")),
            ('averageRating',     Column(name='rating', type='INTEGER')),
            ('numVotes',          Column(name='votes', type='INTEGER')),
        ]))),
])
