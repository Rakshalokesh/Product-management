<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Reports Dashboard</title>
    <link rel="stylesheet" href="css/styles.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #e0f2f1;
            color: #2e2e2e;
            margin: 20px;
            text-align: center;
        }

        h2 {
            color: #ff6f61;
            margin-bottom: 10px;
        }

        p {
            font-size: 1.1em;
            margin-bottom: 20px;
        }

        nav ul {
            list-style: none;
            padding: 0;
        }

        nav ul li {
            display: inline-block;
            margin: 0 15px;
        }

        nav ul li a {
            text-decoration: none;
            background-color: #20c997;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.2s ease;
            font-weight: bold;
        }

        nav ul li a:hover {
            background-color: #17a589;
            transform: translateY(-2px);
        }

        a {
            color: #ff6f61;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Reports Dashboard</h2>

    <p>Select a report option below:</p>

    <nav>
        <ul>
            <li><a href="report_form.jsp">Generate Custom Report</a></li>
            <!-- Additional report links can be added here -->
        </ul>
    </nav>

    <br />
    <a href="index.jsp">Back to Home</a>
</body>
</html>
