conn = new Mongo();

db = conn.getDB("mongoAssignment");

db.empDetails.insert({"emp_id":6,"emp_per":{"name":"Tejas Deskmukh","dob":"1998-09-29","contact":9856148935},"emp_off":{"sal":250000,"join_date":"2020-08-01","dept":"Sales department"}});
db.empDetails.insert({"emp_id":7,"emp_per":{"name":"Venkhatest Arunachalam","dob":"1999-01-29","contact":8823648935},"emp_off":{"sal":700000,"join_date":"2020-08-01","dept":"Production department"}});
