<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Hello, Tntra!</title>
</head>
<style>
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
    <h3 class="text-center">Update Student Details</h3>
    <form action="updateStudent" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="rolNo">Roll No</label>
            <input type="number" class="form-control" name="rolNo" aria-describedby="emailHelp" placeholder="Enter Roll Number" required>
        </div>
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="name" aria-describedby="emailHelp" placeholder="Enter Name" maxlength="20"required>
        </div>
        <div class="form-group">
            <label for="age">Age</label>
            <input type="number" class="form-control" name="age" aria-describedby="emailHelp" placeholder="Enter Age" max="20"required>
        </div>
        <div class="form-group">
            <label for="standard">Class</label>
            <input type="number" class="form-control" name="standard" aria-describedby="emailHelp" placeholder="Enter Standard"required>
        </div>

        <div class="container text-center">
            <button type="submit" class="btn btn-success">Update</button>
        </div>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script>
    function validateForm() {
        var name = document.forms["updateForm"]["name"].value;
        var age = document.forms["updateForm"]["age"].value;

        if (name.length > 20) {
            alert("Name should not be more than 20 letters.");
            return false;
        }

        if (age > 20) {
            alert("Age should not be more than 20 years.");
            return false;
        }

        return true;
    }
</script>
</body>
</html>
