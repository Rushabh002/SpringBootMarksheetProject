<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #4A001F;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        nav {
            background-color: #333;
            padding: 10px;
            width: 100%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
            cursor: pointer;
            transition: color 0.3s ease; /* Added color transition */
        }

        nav a:hover {
            color: #2ecc71; /* Change color on hover */
        }

        h1 {
            font-size: 48px;
            margin: 20px 0;
            color: #FDF0D5;
        }

        .action-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        .action-btn {
            display: block;
            margin: 10px 0;
            padding: 22.5px 90px;
            cursor: pointer;
            background-color: #2ecc71;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 18px;
            width: 562.5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .action-btn:hover {
            background-color: #27ae60;
        }
    </style>
</head>
<body>

    <nav>
        <a onclick="home()">Home</a>
        <a href="/about">About</a>

    </nav>

    <h1>Student Management System</h1>

    <div class="action-container">
        <button class="action-btn" onclick="saveStudent()">Add Student Mark-sheet Details</button>
        <button class="action-btn" onclick="deleteStudent()">Delete Student Details</button>
        <button class="action-btn" onclick="updateStudent()">Update Student Details</button>
        <button class="action-btn" onclick="updateMarksheet()">Update Mark-sheet Details</button>
        <button class="action-btn" onclick="viewMarksheet()">View Mark-sheet</button>
        <button class="action-btn" onclick="viewStudent()">View Student List</button>
        <button class="action-btn" onclick="Addcourse()">Add Courses & Teacher Details</button>
        <button class="action-btn" onclick="updatecourseandteacher()">Update Course & Teacher Details</button>
        <button class="action-btn" onclick="viewCourseTeacher()">View Course & Teacher List</button>
    </div>

    <script>
        function home() {
            window.location.href = "/";
        }
        function saveStudent() {

            window.location.href = "/add";
        }

        function deleteStudent() {
            window.location.href = "/del";
        }

        function updateStudent() {
            window.location.href = "/upStudent";
        }

        function updateMarksheet() {
            window.location.href = "/upMarksheet";
        }

        function viewMarksheet() {
            window.location.href = "/viewmark";
        }
        function viewStudent() {
             window.location.href = "/viewstudent";
        }
        function Addcourse() {
             window.location.href = "/addcourse";
        }
        function updatecourseandteacher() {
             window.location.href = "/upCourse";
        }
        function viewCourseTeacher() {
             window.location.href = "/viewcourse";
        }
    </script>

</body>
</html>
