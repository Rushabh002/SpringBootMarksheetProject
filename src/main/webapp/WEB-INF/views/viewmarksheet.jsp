<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Marksheet</title>
    <style>
    nav {
              position: fixed;
              top: 0;
              left: 0;
              width: 100%;
              background-color: #343a40; /* Dark background color */
              padding: 10px;
              box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
          }

          nav a {
              color: #fff;
              text-decoration: none;
              margin: 0 15px;
              font-size: 18px;
              cursor: pointer;
              transition: color 0.3s ease;
          }

          nav a:hover {
              color: #2ecc71; /* Highlight color on hover */
          }
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #3498db, #2ecc71);
            color: #2c3e50; /* Dark gray text color */
            text-align: center;
            margin: 50px;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: #fff; /* White header text color */
        }

        table {
            width: 60%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #2c3e50; /* Dark blue color */
            color: #fff;
        }

        td {
            background-color: #ecf0f1; /* Light gray color */
        }
    </style>
</head>
<body>
 <nav>
         <a href="/">Home</a>
          <a href="/about">About</a>

      </nav>
    <h1>Marksheet Details </h1>

    <table>
        <tr>
            <th>Roll No</th>
            <td>${student.rollNo}</td>
        </tr>
        <tr>
            <th>Name</th>
            <td>${student.name}</td>
        </tr>
        <tr>
            <th>Age</th>
            <td>${student.age}</td>
        </tr>
        <tr>
            <th>Standard</th>
            <td>${student.standard}th</td>
        </tr>
        <tr>
            <th>Physics</th>
            <td>${marksheet.physics}</td>
        </tr>
        <tr>
            <th>Chemistry</th>
            <td>${marksheet.chemistry}</td>
        </tr>
        <tr>
            <th>Maths</th>
            <td>${marksheet.maths}</td>
        </tr>
        <tr>
            <th>English</th>
            <td>${marksheet.english}</td>
        </tr>


        <tr>
                <th>Total Marks</th>
                <td>${marksheet.physics + marksheet.chemistry + marksheet.maths + marksheet.english}/400</td>
            </tr>
            <tr>
                <th>Percentage</th>
                <td>${((marksheet.physics + marksheet.chemistry + marksheet.maths + marksheet.english) / 400) * 100}%</td>
            </tr>
    </table>
</body>
</html>

