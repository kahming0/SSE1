# Define database parameters
DB_USER="<db_user>"
DB_PASSWORD="<db_password>"
DB_NAME="<db_name>"
DB_ENGINES="mysql pgsql"
TABLE_SIZES="1000 10000 100000"
NUM_TABLES=24
RUNTIME=60
REPEATS=30
ENERGIBRIDGE_PATH="<path/to/energibridge>"
OUT_PATH="<path/to/results>"


# Warm-up for 5 minutes using Fibonacci script
echo "Starting warm-up for 5 minutes..."

FIBONACCI_SCRIPT_PATH="<path/to/fibonacci.sh>"
./$FIBONACCI_SCRIPT_PATH & sleep 300 ; kill $!

# Generate all experiment combinations
experiments=""
for DB_ENGINE in $DB_ENGINES; do
    for TABLE_SIZE in $TABLE_SIZES; do 
#        TABLE_SIZE="$(($TABLE_SIZE / 1000))k"
#    echo $TABLE_SIZE;
        for i in $(seq 1 1 $REPEATS); do
#            echo $i ;
            experiments="$experiments $DB_ENGINE@$TABLE_SIZE@$i"
        done
    done
done


echo "and now shuffled:"
experiments=$(shuf -e $experiments)

start_eb()
{
    ENERGIBRIDGE_EXE="$ENERGIBRIDGE_PATH/./energibridge -o $OUT_PATH/linux/$ENGINE$TSIZE_K$ICOUNT.csv --summary sleep $(($RUNTIME + 2))"
    $ENERGIBRIDGE_EXE 1> "$OUT_PATH/linux_joules/$ENGINE$TSIZE_K$ICOUNT.txt" &

    echo "eb started"
    # Make sure energibridge starts before sysbench
    sleep 1
}


COUNT=0

# shuffle the experiments now
for exec in $experiments ; do
    echo $exec
    
    
    # Split on the @ symbol
    IFS='@' execsplit=$exec
    
    # this should be the same every time unless I messed it up
    # mysql/postgres is in pos 0, size is in pos 1, iteration count is in pos 2.
    set -- $execsplit
    ENGINE=$1
    TSIZE=$2
    ICOUNT=$3
    
    # need to return the IFS to spaces or everything else breaks
    IFS=' '
    
    
    TSIZE_K="$(($TSIZE / 1000))k"    

    
    if [ "$ENGINE" = "mysql" ]
    
    # Execute MYSQL script
    then
        # Drop tables if they exist
        mysql --user=sbtest --password=password sbtest -Bse "DROP TABLE IF EXISTS sbtest1, sbtest2, sbtest3, sbtest4, sbtest5, sbtest6, sbtest7, sbtest8, sbtest9, sbtest10, sbtest11, sbtest12, sbtest13, sbtest14, sbtest15, sbtest16, sbtest17, sbtest18, sbtest19, sbtest20, sbtest21, sbtest22, sbtest23, sbtest24; quit;"
        
        sysbench /usr/share/sysbench/oltp_read_write.lua --db-driver=mysql --threads=1 --mysql-host=127.0.0.1 --mysql-user=sbtest --mysql-password=password --mysql-port=3306 --tables=$NUM_TABLES --table-size=$TSIZE prepare
        # start energybench. 1 second wait also starts from here
        start_eb
        
        sysbench /usr/share/sysbench/oltp_read_write.lua --db_driver=mysql --threads=1 --mysql-host=127.0.0.1 --mysql-user=sbtest --mysql-password=password --mysql-port=3306 --tables=$NUM_TABLES --table-size=$TSIZE --time=$RUNTIME run        
        

    # Now we do the postgres script
    else
        # Drop tables if they exist
        sudo -i -u postgres psql sbtest -c "DROP TABLE IF EXISTS sbtest1, sbtest2, sbtest3, sbtest4, sbtest5, sbtest6, sbtest7, sbtest8, sbtest9, sbtest10, sbtest11, sbtest12, sbtest13, sbtest14, sbtest15, sbtest16, sbtest17, sbtest18, sbtest19, sbtest20, sbtest21, sbtest22, sbtest23, sbtest24"
        
        sysbench /usr/share/sysbench/oltp_read_write.lua --db-driver=pgsql --threads=1 --pgsql-host=127.0.0.1 --pgsql-user=sbtest --pgsql-password=password --pgsql-port=5432 --tables=$NUM_TABLES --table-size=$TSIZE prepare
        
        start_eb

        sysbench /usr/share/sysbench/oltp_read_write.lua --db-driver=pgsql --threads=1 --pgsql-host=127.0.0.1 --pgsql-user=sbtest --pgsql-password=password --pgsql-port=5432 --tables=$NUM_TABLES --table-size=$TSIZE --time=$RUNTIME run

        
    fi
    
    COUNT="$(($COUNT + 1))"
    echo "Finished $COUNT out of $((6 * $REPEATS))"
    
    # Sleep for 60 seconds
    sleep 60
    
    
done


echo "donezo"

