<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Generate Product Reports</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #b39ddb 0%, #ede7f6 100%);
            color: #2e2e2e;
            margin: 0;
            padding: 40px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background: #ffffff;
            max-width: 480px;
            width: 100%;
            padding: 40px 35px;
            border-radius: 16px;
            box-shadow: 0 20px 40px rgba(179, 157, 219, 0.3);
            box-sizing: border-box;
            text-align: left;
        }

        h2 {
            font-weight: 700;
            font-size: 2.2rem;
            margin-bottom: 30px;
            color: #7e57c2;
            text-align: center;
        }

        label {
            display: block;
            font-weight: 600;
            margin-bottom: 8px;
            color: #3d3d3d;
        }

        select, input[type="number"], input[type="text"] {
            width: 100%;
            padding: 14px 16px;
            margin-bottom: 20px;
            border: 2px solid #b39ddb;
            border-radius: 12px;
            font-size: 1rem;
            transition: border-color 0.3s ease;
            box-sizing: border-box;
        }

        select:focus, input[type="number"]:focus, input[type="text"]:focus {
            border-color: #9575cd;
            outline: none;
            box-shadow: 0 0 8px rgba(149, 117, 205, 0.6);
        }

        input[type="submit"] {
            background-color: #7e57c2;
            color: white;
            border: none;
            padding: 14px 0;
            font-size: 1.1rem;
            font-weight: 700;
            border-radius: 12px;
            cursor: pointer;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            width: 100%;
            box-shadow: 0 6px 12px rgba(126, 87, 194, 0.3);
            user-select: none;
        }

        input[type="submit"]:hover,
        input[type="submit"]:focus {
            background-color: #5e35b1;
            box-shadow: 0 10px 20px rgba(94, 53, 177, 0.5);
            outline: none;
            transform: translateY(-2px);
        }

        /* Hide/show input sections */
        #priceInput, #categoryInput, #topNInput {
            display: none;
        }

        @media (max-width: 500px) {
            .container {
                padding: 30px 20px;
            }
        }
    </style>

    <script>
        function toggleInputs() {
            const reportType = document.getElementById("reportType").value;
            document.getElementById("priceInput").style.display = (reportType === "price") ? "block" : "none";
            document.getElementById("categoryInput").style.display = (reportType === "category") ? "block" : "none";
            document.getElementById("topNInput").style.display = (reportType === "topN") ? "block" : "none";
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Generate Product Reports</h2>

        <form action="ReportCriteriaServlet" method="post">
            <label for="reportType">Select Report Type:</label>
            <select id="reportType" name="reportType" onchange="toggleInputs()" required>
                <option value="" disabled selected>--Select--</option>
                <option value="price">Products with Price Greater Than</option>
                <option value="category">Products in Specific Category</option>
                <option value="topN">Top N Products by Quantity</option>
            </select>

            <div id="priceInput">
                <label>Enter Minimum Price:</label>
                <input type="number" step="0.01" name="minPrice" min="0.01" placeholder="e.g. 20000" />
            </div>

            <div id="categoryInput">
                <label>Enter Category Name:</label>
                <input type="text" name="category" placeholder="e.g. Electronics" />
            </div>

            <div id="topNInput">
                <label>Enter Number of Top Products (N):</label>
                <input type="number" name="topN" min="1" placeholder="e.g. 5" />
            </div>

            <input type="submit" value="Generate Report" />
        </form>
    </div>
</body>
</html>
