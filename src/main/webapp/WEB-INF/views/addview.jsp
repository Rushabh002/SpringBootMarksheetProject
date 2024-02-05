<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Hello, Tntra!</title>
</head>
<style>
    nav {
        background-color: #343a40;
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
        transition: color 0.3s ease;
    }

    nav a:hover {
        color: #2ecc71;
    }

    h3 {
        color: #2ecc71;
    }

    .container {
        margin-top: 50px;
    }
</style>
<body>
    <nav>
        <a href="/">Home</a>
        <a href="/about">About</a>
    </nav>

    <div class="container mt-5">
        <h3 class="text-center">Student Details</h3>
        <form action="savestudentdetails" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="rollNo">Roll No</label>
                <input type="number" class="form-control" name="rollNo" placeholder="Enter Roll Number" required>
            </div>

            <div class="form-group">
                <label for="name">Name (Max 20 characters)</label>
                <input type="text" class="form-control" name="name" placeholder="Enter Name" maxlength="20" required>
            </div>

            <div class="form-group">
                <label for="age">Age (Max 20 years)</label>
                <input type="number" class="form-control" name="age" placeholder="Enter Age" max="20" required>
            </div>

            <div class="form-group">
                <label for="standard">Standard</label>
                <input type="number" class="form-control" name="standard" placeholder="Enter Standard" required>
            </div>

            <div class="form-group">
                <label for="mid">Roll No</label>
                <input type="number" class="form-control" name="mid" placeholder="Enter Mid Number" required>
            </div>

            <div class="form-group">
                <label for="physics">Physics Marks (0-100)</label>
                <input type="number" class="form-control" name="physics" placeholder="Enter Physics Marks" min="0" max="100" required>
            </div>

            <div class="form-group">
                <label for="chemistry">Chemistry Marks (0-100)</label>
                <input type="number" class="form-control" name="chemistry" placeholder="Enter Chemistry Marks" min="0" max="100" required>
            </div>

            <div class="form-group">
                <label for="maths">Maths Marks (0-100)</label>
                <input type="number" class="form-control" name="maths" placeholder="Enter Maths Marks" min="0" max="100" required>
            </div>

            <div class="form-group">
                <label for="english">English Marks (0-100)</label>
                <input type="number" class="form-control" name="english" placeholder="Enter English Marks" min="0" max="100" required>
            </div>

            <button type="submit" class="btn btn-success">Save</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script>
        function validateForm() {
            // Custom validation rules
            var physics = document.forms["studentForm"]["physics"].value;
            var chemistry = document.forms["studentForm"]["chemistry"].value;
            var maths = document.forms["studentForm"]["maths"].value;
            var english = document.forms["studentForm"]["english"].value;

            if (physics < 0 || physics > 100 || chemistry < 0 || chemistry > 100 || maths < 0 || maths > 100 || english < 0 || english > 100) {
                alert("Marks should be between 0 and 100.");
                return false;
            }

            // Add more specific validation if needed

            return true;
        }
    </script>
</body>
</html>
