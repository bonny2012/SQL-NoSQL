
--query 1
use TPCH;

--1-a
exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo ;
use TPCH;
db.setProfilingLevel(2);


db.getCollection("project2").find(
    { 
        "c_mktsegment" : "AUTOMOBILE",
        "c_acctbal" : {
                    "$lt" : NumberLong(10000)
                } 
    }, 
    { 
        "c_name" : "$c_name", 
        "c_address" : "$c_address", 
        "c_phone" : "$c_phone"
    }
);
db.system.profile.find().sort({$natural:-1}).limit(10).pretty();

--1-b
exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo ;
use TPCH;

db.setProfilingLevel(2);

db.getCollection("project2").find(
    { 
        "c_mktsegment" : "AUTOMOBILE",
        "c_acctbal" : {
                    "$lt" : NumberLong(1000)
                } 
    }, 
    { 
        "c_name" : "$c_name", 
        "c_address" : "$c_address", 
        "c_phone" : "$c_phone"
    }
);

db.system.profile.find().sort({$natural:-1}).limit(1).pretty();

--1-c
exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo ;
use TPCH;

db.setProfilingLevel(2);

db.getCollection("project2").find(
    { 
        "c_mktsegment" : "AUTOMOBILE",
        "c_acctbal" : {
                    "$lt" : NumberLong(-950)
                } 
    }, 
    { 
        "c_name" : "$c_name", 
        "c_address" : "$c_address", 
        "c_phone" : "$c_phone"
    }
);
db.system.profile.find().sort({$natural:-1}).limit(1).pretty();


exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);

--query 2


--2-a
db.getCollection("project2").aggregate(
    [
        { 
            "$match" : {
                "c_acctbal" : {
                    "$lt" : NumberLong(10000)
                }, 
                "c_mktsegment" : "AUTOMOBILE"
            }
        }, 
        { 
            "$group" : {
                "_id" : {
                    "c_custkey" : "$c_custkey", 
                    "c_name" : "$c_name"
                }, 
                "COUNT(*)" : {
                    "$sum" : NumberInt(1)
                }
            }
        }, 
        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "c_name" : "$_id.c_name", 
                "COUNT(*)" : "$COUNT(*)"
            }
        }, 
        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "c_name" : "$c_name", 
                "COUNT(*)" : "$COUNT(*)"
            }
        }
    ],

    {allowDiskUse : true}
);

db.system.profile.find().sort({$natural:-1}).limit(1).pretty();


--2-b
exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);


db.getCollection("project2").aggregate(
    [
        { 
            "$match" : {
                "c_acctbal" : {
                    "$lt" : NumberLong(1000)
                }, 
                "c_mktsegment" : "AUTOMOBILE"
            }
        }, 
        { 
            "$group" : {
                "_id" : {
                    "c_custkey" : "$c_custkey", 
                    "c_name" : "$c_name"
                }, 
                "COUNT(*)" : {
                    "$sum" : NumberInt(1)
                }
            }
        }, 
        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "c_name" : "$_id.c_name", 
                "COUNT(*)" : "$COUNT(*)"
            }
        }, 
        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "c_name" : "$c_name", 
                "COUNT(*)" : "$COUNT(*)"
            }
        }
    ],

    {allowDiskUse : true}
);
db.system.profile.find().sort({$natural:-1}).limit(1).pretty();


--2-c
exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);

db.getCollection("project2").aggregate(
    [
        { 
            "$match" : {
                "c_acctbal" : {
                    "$lt" : NumberLong(-950)
                }, 
                "c_mktsegment" : "AUTOMOBILE"
            }
        }, 
        { 
            "$group" : {
                "_id" : {
                    "c_custkey" : "$c_custkey", 
                    "c_name" : "$c_name"
                }, 
                "COUNT(*)" : {
                    "$sum" : NumberInt(1)
                }
            }
        }, 
        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "c_name" : "$_id.c_name", 
                "COUNT(*)" : "$COUNT(*)"
            }
        }, 
        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "c_name" : "$c_name", 
                "COUNT(*)" : "$COUNT(*)"
            }
        }
    ],
    {allowDiskUse : true}
);

db.system.profile.find().sort({$natural:-1}).limit(1).pretty();



--query 3
exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);


--3-a 
db.getCollection("project2").aggregate(
    [
        {   "$unwind" : "$orders" },
        { 
            "$match" : {
                "orders.data.o_totalprice" : {
                    "$lt" : NumberLong(1000000)
                }, 
                "orders.data.o_orderpriority" : "2-HIGH         ", 
                "c_acctbal" : {
                    "$gt" : NumberLong(500)
                }, 
                "c_nationkey" : NumberLong(10)
            }
        }, 
        
       
        {   "$project": {
                "orders.data.o_clerk" : 1,
                "c_name" :1
                               
                }
        }
    ],
    {allowDiskUse : true}
).pretty();
db.system.profile.find().sort({$natural:-1}).limit(5).pretty();



--3b
exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);

db.getCollection("project2").aggregate(
    [
        {   "$unwind" : "$orders" },
        { 
            "$match" : {
                "orders.data.o_totalprice" : {
                    "$lt" : NumberLong(100000)
                }, 
                "orders.data.o_orderpriority" : "2-HIGH         ", 
                "c_acctbal" : {
                    "$gt" : NumberLong(500)
                }, 
                "c_nationkey" : NumberLong(10)
            }
        }, 
        
       
        {   "$project": {
                "orders.data.o_clerk" : 1,
                "c_name" :1
                               
                }
        }
    ],
    {allowDiskUse : true}
).pretty();

db.system.profile.find().sort({$natural:-1}).limit().pretty();


--3-c
exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);


db.getCollection("project2").aggregate(
    [
        {   "$unwind" : "$orders" },
        { 
            "$match" : {
                "orders.data.o_totalprice" : {
                    "$lt" : NumberLong(5000)
                }, 
                "orders.data.o_orderpriority" : "2-HIGH         ", 
                "c_acctbal" : {
                    "$gt" : NumberLong(500)
                }, 
                "c_nationkey" : NumberLong(10)
            }
        }, 
        
       
        {   "$project": {
                "orders.data.o_clerk" : 1,
                "c_name" :1
                               
                }
        }
    ],
    {allowDiskUse : true}
).pretty();


db.system.profile.find().sort({$natural:-1}).limit(1).pretty();


--query 4 


--4a
exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);


db.getCollection("project2").aggregate(
    [
        {   "$unwind" : "$orders" },
        { 
            "$match" : {
                "orders.data.o_totalprice" : {
                    "$lt" : NumberLong(1000000)
                }, 
                "orders.data.o_orderpriority" : "2-HIGH         ", 
                "c_acctbal" : {
                    "$gt" : NumberLong(500)
                }, 
                "c_nationkey" : NumberLong(10)
            }
        }, 

        
        { 
            "$group" : {
                "_id" : {
                    "orders᎐data᎐o_clerk" : "$orders.data.o_clerk"
                }, 
                "uniqueCOUNT(c_name)" : {
                    "$addToSet" : "$c_name"
                }
            }
        },
        {   "$project": {
                "orders᎐data᎐o_clerk" :1,
                uniquec_name :{$size: "$uniqueCOUNT(c_name)"}
                }
        }
    ],
    {allowDiskUse : true}
).pretty();



db.system.profile.find().sort({$natural:-1}).limit(1).pretty();

--4-b
exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);


db.getCollection("project2").aggregate(
    [
        {   "$unwind" : "$orders" },
        { 
            "$match" : {
                "orders.data.o_totalprice" : {
                    "$lt" : NumberLong(100000)
                }, 
                "orders.data.o_orderpriority" : "2-HIGH         ", 
                "c_acctbal" : {
                    "$gt" : NumberLong(500)
                }, 
                "c_nationkey" : NumberLong(10)
            }
        }, 

        
        { 
            "$group" : {
                "_id" : {
                    "orders᎐data᎐o_clerk" : "$orders.data.o_clerk"
                }, 
                "uniqueCOUNT(c_name)" : {
                    "$addToSet" : "$c_name"
                }
            }
        },
        {   "$project": {
                "orders᎐data᎐o_clerk" :1,
                uniquec_name :{$size: "$uniqueCOUNT(c_name)"}
                }
        }
    ],
    {allowDiskUse : true}
).pretty();


db.system.profile.find().sort({$natural:-1}).limit(5).pretty();

--4-c

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);


db.getCollection("project2").aggregate(
    [
        {   "$unwind" : "$orders" },
        { 
            "$match" : {
                "orders.data.o_totalprice" : {
                    "$lt" : NumberLong(5000)
                }, 
                "orders.data.o_orderpriority" : "2-HIGH         ", 
                "c_acctbal" : {
                    "$gt" : NumberLong(500)
                }, 
                "c_nationkey" : NumberLong(10)
            }
        }, 

        
        { 
            "$group" : {
                "_id" : {
                    "orders᎐data᎐o_clerk" : "$orders.data.o_clerk"
                }, 
                "uniqueCOUNT(c_name)" : {
                    "$addToSet" : "$c_name"
                }
            }
        },
        {   "$project": {
                "orders᎐data᎐o_clerk" :1,
                uniquec_name :{$size: "$uniqueCOUNT(c_name)"}
                }
        }
    ],
    {allowDiskUse : true}
).pretty();


db.system.profile.find().sort({$natural:-1}).limit(5).pretty();



--5-a

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);

db.getCollection("project2").aggregate(
    [ 
        {   "$unwind" : "$orders" }

        ,
        {   "$unwind" : "$orders.data.lineitem" }

,

        {
            "$match":

            {
            "orders.data.o_orderdate": { "$gte" : "1993-07-01", 
                          "$lt": "1996-07-01"} 
            }},

        {
            "$project": {
              "orders.data.o_orderkey" :1,
              "orders.data.lineitem.l_commitdate":1,
              "orders.data.lineitem.l_receiptdate":1,
              "orders.data.o_orderpriority":1,
              "orders.data.o_orderdate" :1,
              "dateComp": {"$cmp":["$orders.data.lineitem.l_commitdate","$orders.data.lineitem.l_receiptdate"]}
            }
        },
           
        {"$match":
            {"dateComp": -1}},
            
        { 
            "$group" : {
                "_id" : {
                    "orders᎐data᎐o_orderpriority" : "$orders.data.o_orderpriority"
                }, 
                "uniqueCOUNT(order)" : {
                    "$addToSet" : "$orders.data.o_orderkey"
                }
            }
        },
           { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.o_orderpriority" : "$_id.orders᎐data᎐o_orderpriority", 
                 "uniqueorder" :{$size: "$uniqueCOUNT(order)" }
            }
        }, 
        { 
            "$sort" : {
                "orders.data.o_orderpriority" : NumberInt(1)
            }
        }, 
        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.o_orderpriority" : "$orders.data.o_orderpriority", 
                "COUNT(*)" : "$uniqueorder"
            }
        }

        

    ],
    {allowDiskUse : true}

).pretty();



db.system.profile.find().sort({$natural:-1}).limit(6).pretty();


--5-b

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);


db.getCollection("project2").aggregate(
    [ 
        {   "$unwind" : "$orders" }

        ,
        {   "$unwind" : "$orders.data.lineitem" }

,

        {
            "$match":

            {
            "orders.data.o_orderdate": { "$gte" : "1993-07-01", 
                          "$lt": "1993-10-01"} 
            }},

        {
            "$project": {
              "orders.data.o_orderkey" :1,
              "orders.data.lineitem.l_commitdate":1,
              "orders.data.lineitem.l_receiptdate":1,
              "orders.data.o_orderpriority":1,
              "orders.data.o_orderdate" :1,
              "dateComp": {"$cmp":["$orders.data.lineitem.l_commitdate","$orders.data.lineitem.l_receiptdate"]}
            }
        },
           
        {"$match":
            {"dateComp": -1}},
            
        { 
            "$group" : {
                "_id" : {
                    "orders᎐data᎐o_orderpriority" : "$orders.data.o_orderpriority"
                }, 
                "uniqueCOUNT(order)" : {
                    "$addToSet" : "$orders.data.o_orderkey"
                }
            }
        },
           { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.o_orderpriority" : "$_id.orders᎐data᎐o_orderpriority", 
                 "uniqueorder" :{$size: "$uniqueCOUNT(order)" }
            }
        }, 
        { 
            "$sort" : {
                "orders.data.o_orderpriority" : NumberInt(1)
            }
        }, 
        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.o_orderpriority" : "$orders.data.o_orderpriority", 
                "COUNT(*)" : "$uniqueorder"
            }
        }

        

    ],
    {allowDiskUse : true}

).pretty();


db.system.profile.find().sort({$natural:-1}).limit(6).pretty();

--5-c

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);

db.getCollection("project2").aggregate(
    [ 
        {   "$unwind" : "$orders" }

        ,
        {   "$unwind" : "$orders.data.lineitem" }

,

        {
            "$match":

            {
            "orders.data.o_orderdate": { "$gte" : "1993-07-01", 
                          "$lt": "1993-08-01"} 
            }},

        {
            "$project": {
              "orders.data.o_orderkey" :1,
              "orders.data.lineitem.l_commitdate":1,
              "orders.data.lineitem.l_receiptdate":1,
              "orders.data.o_orderpriority":1,
              "orders.data.o_orderdate" :1,
              "dateComp": {"$cmp":["$orders.data.lineitem.l_commitdate","$orders.data.lineitem.l_receiptdate"]}
            }
        },
           
        {"$match":
            {"dateComp": -1}},
            
        { 
            "$group" : {
                "_id" : {
                    "orders᎐data᎐o_orderpriority" : "$orders.data.o_orderpriority"
                }, 
                "uniqueCOUNT(order)" : {
                    "$addToSet" : "$orders.data.o_orderkey"
                }
            }
        },
           { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.o_orderpriority" : "$_id.orders᎐data᎐o_orderpriority", 
                 "uniqueorder" :{$size: "$uniqueCOUNT(order)" }
            }
        }, 
        { 
            "$sort" : {
                "orders.data.o_orderpriority" : NumberInt(1)
            }
        }, 
        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.o_orderpriority" : "$orders.data.o_orderpriority", 
                "COUNT(*)" : "$uniqueorder"
            }
        }

        

    ],
    {allowDiskUse : true}

).pretty();


db.system.profile.find().sort({$natural:-1}).limit(6).pretty();



--query 6

--6-a

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);

db.getCollection("project2").aggregate(
    [ 
        {   "$unwind" : "$orders" },
        {   "$unwind" : "$orders.data.lineitem" },

        {
            "$match":{

            
            "orders.data.o_orderdate": { "$lt": "1995-03-15"} 
            ,
             "c_mktsegment" : "AUTOMOBILE",

             "orders.data.lineitem.l_shipdate":{"$gt": "1995-03-15"} 
            
            }
        },
         { 
            "$group" : {
                "_id" : {
                    
                    "orders᎐data᎐o_orderdate" : "$orders.data.o_orderdate", 
                    "orders᎐data᎐o_shippriority" : "$orders.data.o_shippriority",
                    "orders᎐data᎐lineitem᎐l_orderkey" : "$orders.data.lineitem.l_orderkey"
                },
               
                 "revenue" : {
                    "$sum" : { 
                    $multiply: 
                    ["$orders.data.lineitem.l_extendedprice",{ $subtract : [1,"$orders.data.lineitem.l_discount"]}]}}
            }
        },

        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.lineitem.l_orderkey" : "$_id.orders᎐data᎐lineitem᎐l_orderkey", 
                "orders.data.o_orderdate" : "$_id.orders᎐data᎐o_orderdate", 
                "orders.data.o_shippriority" : "$_id.orders᎐data᎐o_shippriority",
                
                 "revenue"   : "$revenue"
            }
        },

         { 
            "$sort" : {
                "revenue" : NumberInt(-1)
            }
        }
    ],
    {allowDiskUse : true}
).pretty();



db.system.profile.find().sort({$natural:-1}).limit(1).pretty();


--6-b

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);


db.getCollection("project2").aggregate(
    [ 
        {   "$unwind" : "$orders" },
        {   "$unwind" : "$orders.data.lineitem" },

        {
            "$match":{

            
            "orders.data.o_orderdate": { "$lt": "1995-03-15"} 
            ,
             "c_mktsegment" : "AUTOMOBILE",

             "orders.data.lineitem.l_shipdate":{"$gt": "1995-03-15"} ,

             "orders.data.o_totalprice" : {
                    "$lt" : NumberLong(100000)
                },
            
            }
        },
         { 
            "$group" : {
                "_id" : {
                    
                    "orders᎐data᎐o_orderdate" : "$orders.data.o_orderdate", 
                    "orders᎐data᎐o_shippriority" : "$orders.data.o_shippriority",
                    "orders᎐data᎐lineitem᎐l_orderkey" : "$orders.data.lineitem.l_orderkey"
                },
               
                 "revenue" : {
                    "$sum" : { 
                    $multiply: 
                    ["$orders.data.lineitem.l_extendedprice",{ $subtract : [1,"$orders.data.lineitem.l_discount"]}]}}
            }
        },

        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.lineitem.l_orderkey" : "$_id.orders᎐data᎐lineitem᎐l_orderkey", 
                "orders.data.o_orderdate" : "$_id.orders᎐data᎐o_orderdate", 
                "orders.data.o_shippriority" : "$_id.orders᎐data᎐o_shippriority",
                
                 "revenue"   : "$revenue"
            }
        },

         { 
            "$sort" : {
                "revenue" : NumberInt(-1)
            }
        }
    ],
    {allowDiskUse : true}
).pretty();



db.system.profile.find().sort({$natural:-1}).limit(1).pretty();


--6-c

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);

db.getCollection("project2").aggregate(
    [ 
        {   "$unwind" : "$orders" },
        {   "$unwind" : "$orders.data.lineitem" },

        {
            "$match":{

            
            "orders.data.o_orderdate": { "$lt": "1995-03-15"} 
            ,
             "c_mktsegment" : "AUTOMOBILE",

             "orders.data.lineitem.l_shipdate":{"$gt": "1995-03-15"} ,

            "orders.data.o_totalprice" : {
                    "$lt" : NumberLong(10000)
                },
            
            
            }
        },
         { 
            "$group" : {
                "_id" : {
                    
                    "orders᎐data᎐o_orderdate" : "$orders.data.o_orderdate", 
                    "orders᎐data᎐o_shippriority" : "$orders.data.o_shippriority",
                    "orders᎐data᎐lineitem᎐l_orderkey" : "$orders.data.lineitem.l_orderkey"
                },
               
                 "revenue" : {
                    "$sum" : { 
                    $multiply: 
                    ["$orders.data.lineitem.l_extendedprice",{ $subtract : [1,"$orders.data.lineitem.l_discount"]}]}}
            }
        },

        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.lineitem.l_orderkey" : "$_id.orders᎐data᎐lineitem᎐l_orderkey", 
                "orders.data.o_orderdate" : "$_id.orders᎐data᎐o_orderdate", 
                "orders.data.o_shippriority" : "$_id.orders᎐data᎐o_shippriority",
                
                 "revenue"   : "$revenue"
            }
        },

         { 
            "$sort" : {
                "revenue" : NumberInt(-1)
            }
        }
    ],

    {allowDiskUse : true}
).pretty();


db.system.profile.find().sort({$natural:-1}).limit(5).pretty();



--query 7
--7-a

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);

db.getCollection("project2").aggregate(
    [
        {   "$unwind" : "$orders" },
        {   "$unwind" : "$orders.data.lineitem" },

        { 
            "$match" : {
                "orders.data.lineitem.l_shipdate" : {
                    "$lte" : "1998-09-01"
                }, 
                "orders.data.lineitem.l_tax" : {
                    "$gt" : 0.01
                }, 
                "orders.data.lineitem.l_discount" : {
                    "$lt" : 0.5
                }
            }
        }, 
        { 
            "$group" : {
                "_id" : {
                    "orders᎐data᎐lineitem᎐l_returnflag" : "$orders.data.lineitem.l_returnflag", 
                    "orders᎐data᎐lineitem᎐l_linestatus" : "$orders.data.lineitem.l_linestatus"
                },
                 "sum_qty" : { "$sum" : "$orders.data.lineitem.l_quantity"},
                 "sum_base_price" : { "$sum" : "$orders.data.lineitem.l_extendedprice" } ,
              
                      
                "sum_disc_price" : {
                    "$sum" : { 
                    $multiply: 
                    ["$orders.data.lineitem.l_extendedprice",{ $subtract : [1,"$orders.data.lineitem.l_discount"]}]}},
                "sum_charge" : {
                    "$sum" : { 
                    $multiply: 
                    ["$orders.data.lineitem.l_extendedprice",{ $subtract : [1,"$orders.data.lineitem.l_discount"]},{ $add : [1,"$orders.data.lineitem.l_tax"]}]}} 
                ,
                "avg_qty" : { "$avg" : "$orders.data.lineitem.l_quantity" },

                "avg_price" : { "$avg" : "$orders.data.lineitem.l_extendedprice" },
                "avg_disc"  : { "$avg" : "$orders.data.lineitem.l_discount" }   ,

                "count_order" : {
                "$sum" : NumberInt(1)}

            }
        }, 
        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.lineitem.l_returnflag" : "$_id.orders᎐data᎐lineitem᎐l_returnflag", 
                "orders.data.lineitem.l_linestatus" : "$_id.orders᎐data᎐lineitem᎐l_linestatus",
                "sum_qty" :"$sum_qty" ,
                "sum_base_price" : "$sum_base_price",

                "sum_disc_price" : "$sum_disc_price",
                "sum_charge" : "$sum_charge" ,
                "avg_qty" : "$avg_qty",
                "avg_price" : "$avg_price",
                "avg_disc" : "$avg_disc" ,
                "count_order" : "$count_order"
                        }
        }, 
        { 
            "$sort" : {
                "orders.data.lineitem.l_returnflag" : NumberInt(1), 
                "orders.data.lineitem.l_linestatus" : NumberInt(1)
            }
        }
    ],
    {allowDiskUse : true}
).pretty();


db.system.profile.find().sort({$natural:-1}).limit(10).pretty();



--7-b

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);


db.getCollection("project2").aggregate(
    [
        {   "$unwind" : "$orders" },
        {   "$unwind" : "$orders.data.lineitem" },

        { 
            "$match" : {
                "orders.data.lineitem.l_shipdate" : {
                    "$lte" : "1998-09-01"
                }, 
                "orders.data.lineitem.l_tax" : {
                    "$gt" : 0.05
                }, 
                "orders.data.lineitem.l_discount" : {
                    "$lt" : 0.5
                }
            }
        }, 
        { 
            "$group" : {
                "_id" : {
                    "orders᎐data᎐lineitem᎐l_returnflag" : "$orders.data.lineitem.l_returnflag", 
                    "orders᎐data᎐lineitem᎐l_linestatus" : "$orders.data.lineitem.l_linestatus"
                },
                 "sum_qty" : { "$sum" : "$orders.data.lineitem.l_quantity"},
                 "sum_base_price" : { "$sum" : "$orders.data.lineitem.l_extendedprice" } ,
              
                      
                "sum_disc_price" : {
                    "$sum" : { 
                    $multiply: 
                    ["$orders.data.lineitem.l_extendedprice",{ $subtract : [1,"$orders.data.lineitem.l_discount"]}]}},
                "sum_charge" : {
                    "$sum" : { 
                    $multiply: 
                    ["$orders.data.lineitem.l_extendedprice",{ $subtract : [1,"$orders.data.lineitem.l_discount"]},{ $add : [1,"$orders.data.lineitem.l_tax"]}]}} 
                ,
                "avg_qty" : { "$avg" : "$orders.data.lineitem.l_quantity" },

                "avg_price" : { "$avg" : "$orders.data.lineitem.l_extendedprice" },
                "avg_disc"  : { "$avg" : "$orders.data.lineitem.l_discount" }   ,

                "count_order" : {
                "$sum" : NumberInt(1)}

            }
        }, 
        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.lineitem.l_returnflag" : "$_id.orders᎐data᎐lineitem᎐l_returnflag", 
                "orders.data.lineitem.l_linestatus" : "$_id.orders᎐data᎐lineitem᎐l_linestatus",
                "sum_qty" :"$sum_qty" ,
                "sum_base_price" : "$sum_base_price",

                "sum_disc_price" : "$sum_disc_price",
                "sum_charge" : "$sum_charge" ,
                "avg_qty" : "$avg_qty",
                "avg_price" : "$avg_price",
                "avg_disc" : "$avg_disc" ,
                "count_order" : "$count_order"
                        }
        }, 
        { 
            "$sort" : {
                "orders.data.lineitem.l_returnflag" : NumberInt(1), 
                "orders.data.lineitem.l_linestatus" : NumberInt(1)
            }
        }
    ],
    {allowDiskUse : true}
).pretty();



db.system.profile.find().sort({$natural:-1}).limit(5).pretty();



--7-c

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);


db.getCollection("project2").aggregate(
    [
        {   "$unwind" : "$orders" },
        {   "$unwind" : "$orders.data.lineitem" },

        { 
            "$match" : {
                "orders.data.lineitem.l_shipdate" : {
                    "$lte" : "1998-09-01"
                }, 
                "orders.data.lineitem.l_tax" : {
                    "$gt" : 0.07
                }, 
                "orders.data.lineitem.l_discount" : {
                    "$lt" : 0.01
                }
            }
        }, 
        { 
            "$group" : {
                "_id" : {
                    "orders᎐data᎐lineitem᎐l_returnflag" : "$orders.data.lineitem.l_returnflag", 
                    "orders᎐data᎐lineitem᎐l_linestatus" : "$orders.data.lineitem.l_linestatus"
                },
                 "sum_qty" : { "$sum" : "$orders.data.lineitem.l_quantity"},
                 "sum_base_price" : { "$sum" : "$orders.data.lineitem.l_extendedprice" } ,
              
                      
                "sum_disc_price" : {
                    "$sum" : { 
                    $multiply: 
                    ["$orders.data.lineitem.l_extendedprice",{ $subtract : [1,"$orders.data.lineitem.l_discount"]}]}},
                "sum_charge" : {
                    "$sum" : { 
                    $multiply: 
                    ["$orders.data.lineitem.l_extendedprice",{ $subtract : [1,"$orders.data.lineitem.l_discount"]},{ $add : [1,"$orders.data.lineitem.l_tax"]}]}} 
                ,
                "avg_qty" : { "$avg" : "$orders.data.lineitem.l_quantity" },

                "avg_price" : { "$avg" : "$orders.data.lineitem.l_extendedprice" },
                "avg_disc"  : { "$avg" : "$orders.data.lineitem.l_discount" }   ,

                "count_order" : {
                "$sum" : NumberInt(1)}

            }
        }, 
        { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.lineitem.l_returnflag" : "$_id.orders᎐data᎐lineitem᎐l_returnflag", 
                "orders.data.lineitem.l_linestatus" : "$_id.orders᎐data᎐lineitem᎐l_linestatus",
                "sum_qty" :"$sum_qty" ,
                "sum_base_price" : "$sum_base_price",

                "sum_disc_price" : "$sum_disc_price",
                "sum_charge" : "$sum_charge" ,
                "avg_qty" : "$avg_qty",
                "avg_price" : "$avg_price",
                "avg_disc" : "$avg_disc" ,
                "count_order" : "$count_order"
                        }
        }, 
        { 
            "$sort" : {
                "orders.data.lineitem.l_returnflag" : NumberInt(1), 
                "orders.data.lineitem.l_linestatus" : NumberInt(1)
            }
        }
    ],
    {allowDiskUse : true}
).pretty();



db.system.profile.find().sort({$natural:-1}).limit(6).pretty();


--query 8
--8-a

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);


db.getCollection("project2").aggregate(
    [
        {   "$unwind" : "$orders" },
        {   "$unwind" : "$orders.data.lineitem" },

        { 
            "$match" : {                                               
                        "orders.data.lineitem.l_shipmode" : {
                        "$in" : [  "MAIL      ", "SHIP      "]
                        },
                        
                        "orders.data.lineitem.l_receiptdate" : {
                            "$gte" : "1994-01-01","$lt" : "1999-01-01"
                        }
                    

               
            }
        } ,

         { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.lineitem.l_shipmode" : 1,
                "orders.data.o_orderpriority" :1,
                "dateComp1": {"$cmp":["$orders.data.lineitem.l_commitdate","$orders.data.lineitem.l_receiptdate"]},
                "dateComp2": {"$cmp":["$orders.data.lineitem.l_shipdate","$orders.data.lineitem.l_commitdate"]}

            }
        },

        {"$match":
            {"dateComp1": -1,
            "dateComp2": -1}
        },

        { "$group": {
                     "_id" : {
                                "orders᎐data᎐lineitem᎐l_shipmode" : "$orders.data.lineitem.l_shipmode"
                            },
                  
                    "high_line_count": {
                        "$sum": {
                            "$cond": [
                                { "$anyElementTrue": { "$map": {
                                    "input": [ "1-URGENT       "  ,  "2-HIGH         " ],
                                    "as": "el",
                                    "in": { "$eq": [ "$$el", "$orders.data.o_orderpriority" ] }
                                }}},
                                1,
                                0
                            ]
                        }
                    },
                    "low_line_count": {
                        "$sum": {
                            "$cond": [
                                { "$not": [{ "$anyElementTrue": { "$map": {
                                    "input": [  "1-URGENT       "  ,  "2-HIGH         " ],
                                    "as": "el",
                                    "in": { "$eq": [ "$$el", "$orders.data.o_orderpriority" ] }
                                }}}]},
                                1,
                                0
                            ]
                        }
                    }
            }
        }  ,

        { 
            "$sort" : {
                "orders.data.lineitem.l_shipmode" : NumberInt(1)
            }
        }
        

        
    ],
    {allowDiskUse : true}
).pretty();


db.system.profile.find().sort({$natural:-1}).limit(1).pretty();


--8-b

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);


db.getCollection("project2").aggregate(
    [
        {   "$unwind" : "$orders" },
        {   "$unwind" : "$orders.data.lineitem" },

        { 
            "$match" : {                                               
                        "orders.data.lineitem.l_shipmode" : {
                        "$in" : [  "MAIL      ", "SHIP      "]
                        },
                        
                        "orders.data.lineitem.l_receiptdate" : {
                            "$gte" : "1994-01-01","$lt" : "1995-01-01"
                        }
                    

               
            }
        } ,

         { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.lineitem.l_shipmode" : 1,
                "orders.data.o_orderpriority" :1,
                "dateComp1": {"$cmp":["$orders.data.lineitem.l_commitdate","$orders.data.lineitem.l_receiptdate"]},
                "dateComp2": {"$cmp":["$orders.data.lineitem.l_shipdate","$orders.data.lineitem.l_commitdate"]}

            }
        },

        {"$match":
            {"dateComp1": -1,
            "dateComp2": -1}
        },

        { "$group": {
                     "_id" : {
                                "orders᎐data᎐lineitem᎐l_shipmode" : "$orders.data.lineitem.l_shipmode"
                            },
                  
                    "high_line_count": {
                        "$sum": {
                            "$cond": [
                                { "$anyElementTrue": { "$map": {
                                    "input": [ "1-URGENT       "  ,  "2-HIGH         " ],
                                    "as": "el",
                                    "in": { "$eq": [ "$$el", "$orders.data.o_orderpriority" ] }
                                }}},
                                1,
                                0
                            ]
                        }
                    },
                    "low_line_count": {
                        "$sum": {
                            "$cond": [
                                { "$not": [{ "$anyElementTrue": { "$map": {
                                    "input": [  "1-URGENT       "  ,  "2-HIGH         " ],
                                    "as": "el",
                                    "in": { "$eq": [ "$$el", "$orders.data.o_orderpriority" ] }
                                }}}]},
                                1,
                                0
                            ]
                        }
                    }
            }
        }  ,

        { 
            "$sort" : {
                "orders.data.lineitem.l_shipmode" : NumberInt(1)
            }
        }
        

        
    ],
    {allowDiskUse : true}
).pretty();


db.system.profile.find().sort({$natural:-1}).limit(2).pretty();

--8-c

exit;
sudo su;
systemctl stop mongod.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start mongod.service;
exit;
mongo --username Xin --password Xin;
use TPCH;

db.setProfilingLevel(2);

db.getCollection("project2").aggregate(
    [
        {   "$unwind" : "$orders" },
        {   "$unwind" : "$orders.data.lineitem" },

        { 
            "$match" : {                                               
                        "orders.data.lineitem.l_shipmode" : {
                        "$in" : [  "MAIL      ", "SHIP      "]
                        },
                        
                        "orders.data.lineitem.l_receiptdate" : {
                            "$gte" : "1994-01-01","$lt" : "1994-01-31"
                        }
                    

               
            }
        } ,

         { 
            "$project" : {
                "_id" : NumberInt(0), 
                "orders.data.lineitem.l_shipmode" : 1,
                "orders.data.o_orderpriority" :1,
                "dateComp1": {"$cmp":["$orders.data.lineitem.l_commitdate","$orders.data.lineitem.l_receiptdate"]},
                "dateComp2": {"$cmp":["$orders.data.lineitem.l_shipdate","$orders.data.lineitem.l_commitdate"]}

            }
        },

        {"$match":
            {"dateComp1": -1,
            "dateComp2": -1}
        },

        { "$group": {
                     "_id" : {
                                "orders᎐data᎐lineitem᎐l_shipmode" : "$orders.data.lineitem.l_shipmode"
                            },
                  
                    "high_line_count": {
                        "$sum": {
                            "$cond": [
                                { "$anyElementTrue": { "$map": {
                                    "input": [ "1-URGENT       "  ,  "2-HIGH         " ],
                                    "as": "el",
                                    "in": { "$eq": [ "$$el", "$orders.data.o_orderpriority" ] }
                                }}},
                                1,
                                0
                            ]
                        }
                    },
                    "low_line_count": {
                        "$sum": {
                            "$cond": [
                                { "$not": [{ "$anyElementTrue": { "$map": {
                                    "input": [  "1-URGENT       "  ,  "2-HIGH         " ],
                                    "as": "el",
                                    "in": { "$eq": [ "$$el", "$orders.data.o_orderpriority" ] }
                                }}}]},
                                1,
                                0
                            ]
                        }
                    }
            }
        }  ,

        { 
            "$sort" : {
                "orders.data.lineitem.l_shipmode" : NumberInt(1)
            }
        }
        

        
    ],
    {allowDiskUse : true}
).pretty();


db.system.profile.find().sort({$natural:-1}).limit(1).pretty();