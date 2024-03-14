<%--
  Created by IntelliJ IDEA.
  User: 86150
  Date: 2024/3/14
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script>
        function validateForm() {
            let username = document.getElementById('username').value;
            let password = document.getElementById('password').value;
            let email = document.getElementById('email').value;
            let dob = document.getElementById('dob').value;

                if (username === '') {
                    alert('Username is required');
                    return false;
                }

                if (password === '') {
                    alert('Password is required');
                    return false;
                } else if (password.length < 8) {
                    alert('Password must be at least 8 characters long');
                    return false;
                }

                if (email === '') {
                    alert('Email is required');
                    return false;
                } else if (!validateEmail(email)) {
                    alert('Please enter a valid email address');
                    return false;
                }

                let pattern = /^\d{4}-\d{2}-\d{2}$/;
                if (dob === '') {
                    alert('Date of birth is required');
                    return false;
                } else if (!pattern.test(dob)) {
                    alert('Please enter the date in the format yyyy-mm-dd');
                    return false;
                }
                return true;
            }

            function validateEmail(email) {
                let re = /\S+@\S+\.\S+/;
                return re.test(email);
            }

    </script>
</head>
<body>
<p>New User Registration!</p>
<form method="post" onsubmit="return validateForm()">
    <input type="text" id="username" name="username" placeholder="Username"><br/>
    <input type="password" id="password" name="password" placeholder="Password"><br/>
    <input type="email" id="email" name="email" placeholder="Email"><br/>
    Gender
    <input type="radio" id="male" name="gender" value="male">
    <label for="male">Male</label>
    <input type="radio" id="female" name="gender" value="female">
    <label for="female">Female</label><br/>
    <input type="text" id="dob" name="dob" pattern="\d{4}-\d{2}-\d{2}" placeholder="Date of birth (yyyy-mm-dd)"><br/>
    <input type="submit"><br/>
</form>
</body>
</html>