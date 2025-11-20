<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Profile Details</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f9f3f3; 
            margin: 0;
            padding: 0;
        }

        .profile-container {
            width: 70%;
            margin: 30px auto;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            padding: 30px;
            border: 3px solid #a7c7a9; 
        }

        h2 {
            text-align: center;
            color: #a7c7a9; 
            margin-bottom: 20px;
        }

        .profile-card {
            background-color: #fdf6f6; 
            border: 2px solid #a7c7a9;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 15px;
        }

        .profile-card strong {
            color: #d77a7a; 
        }

        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn-container a button {
            background-color: #a7c7a9;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .btn-container a button:hover {
            background-color: #d77a7a;
            cursor: url('images/strawberry.png'), pointer; 
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <h2>🍓 Your Profiles 🍵</h2>

        <%
            
            List<Map<String,String>> profiles = (List<Map<String,String>>) session.getAttribute("profiles");
            if (profiles != null && !profiles.isEmpty()) {
                for (Map<String,String> profile : profiles) {
        %>
                    <div class="profile-card">
                        <p><strong>Name:</strong> <%= profile.get("name") %></p>
                        <p><strong>Student ID:</strong> <%= profile.get("studentId") %></p>
                        <p><strong>Program:</strong> <%= profile.get("program") %></p>
                        <p><strong>Email:</strong> <%= profile.get("email") %></p>
                        <p><strong>Hobbies:</strong> <%= profile.get("hobbies") %></p>
                        <p><strong>Introduction:</strong> <%= profile.get("intro") %></p>
                    </div>
        <%
                }
            } else {
        %>
            <p style="text-align:center;">No profiles yet. Add one below!</p>
        <%
            }
        %>
                
                <div class="btn-container">
    <form action="index.html" method="get">
        <button type="submit" style="
            background-color:#a7c7a9;
            color:white;
            padding:12px 20px;
            border:none;
            border-radius:8px;
            font-size:16px;
            cursor:pointer;
        ">➕ Add New Profile</button>
    </form>
</div>
            </a>
        </div>
    </div>
</body>
</html>