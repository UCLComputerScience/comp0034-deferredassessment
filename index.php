<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>IEP Minors selection app</title>
</head>
<body>
<div class="container-fluid">
    <form name="signup" class="form" action="php/signup.php" method="post">
        <legend>Sign up</legend>
        <label for="username">UCL username </label>
        <input type="email" class="form-control" id="username" name="username" placeholder="uccccccc@ucl.ac.uk"
               required>
        <label for="password">Password </label>
        <input type="password" class="form-control" id="password" name="password" required>
        <label for="role">Role </label>
        <select class="form-control" id="role" name="role" required>
            <option value="student">Student</option>
            <option value="administrator">Administrator</option>
        </select>
        <label for="progid">Programme </label>
        <select class="form-control" id="progid" name="progid">
            <option disabled selected value> -- select an option -- </option>
            <option value="1">BEng Engineering (Biochemical)</option>
            <option value="2">MEng Engineering (Biochemical)</option>
            <!--
                BEng Engineering (Biomedical)
                MEng Engineering (Biomedical)
                BEng Engineering (Chemical)
                MEng Engineering (Chemical)
                BEng Engineering (Civil)
                MEng Engineering (Civil)
                BSc Computer Science
                MEng Computer Science
                BEng Engineering (Electronic and Electrical)
                MEng Engineering (Electronic and Electrical)
                BSc Management Science
                MSci Management Science
                BEng Engineering (Mechanical)
                MEng Engineering (Mechanical)
            -->
        </select>
        <br>
        <button type="submit" class="btn btn-dark">Submit</button>
    </form>
</div>
</body>