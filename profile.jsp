<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile Details</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f9f3f3; /* light pink background */
            margin: 0;
            padding: 0;
        }

        .profile-container {
            width: 60%;
            margin: 50px auto;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            padding: 30px;
            border: 3px solid #a7c7a9; /* sage green border */
        }

        h2 {
            text-align: center;
            color: #a7c7a9; /* sage green */
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            margin: 10px 0;
        }

        strong {
            color: #d77a7a; /* strawberry pink for labels */
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <h2>🍓 Your Profile 🍵</h2>
        <p><strong>Name:</strong> ${name}</p>
        <p><strong>Student ID:</strong> ${studentId}</p>
        <p><strong>Program:</strong> ${program}</p>
        <p><strong>Email:</strong> ${email}</p>
        <p><strong>Hobbies:</strong> ${hobbies}</p>
        <p><strong>Introduction:</strong> ${intro}</p>
    </div>
</body>
</html>
