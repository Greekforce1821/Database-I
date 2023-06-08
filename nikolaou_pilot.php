<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>Σε ποια συνέδρια συμμετείχε η πιλότος Νικολάου;</title>    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        .logo-image {
            position: absolute;
            top: 1px;
            left: 10px;
            width: 100px;
        }

        .right-logo-image {
            position: absolute;
            top: 25px;
            right: 10px;
            width: 100px;
        }

        footer {
            background-color: #f2f2f2;
            padding: 10px;
            text-align: center;
            position: absolute;
            bottom: 0;
            width: 100%;
        }

        .grid-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        .grid-item {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        .grid-container th,
        .grid-container td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        .grid-container th {
            background-color: #f2f2f2;
        }

        .grid-container tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .return-link {
            text-align: center;
            margin-top: 20px;
        }

        .search-form {
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
            margin-top: 20px;
            background-color: #f2f2f2;
        }

        .search-input {
            width: 300px;
            padding: 10px;
            text-align: center;
            font-size: 16px;
        }

        .search-button {
            padding: 10px 20px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Airport DB User Group III</h1>
    </header>

    <nav>
        <form class="search-form" method="POST" action="">
            <a href="https://ionio.gr" target="_blank"><img class="logo-image" src="images/uni-logo.png" alt="Logo"></a>
            <a href="https://di.ionio.gr" target="_blank"><img class="right-logo-image" src="images/di.jpg" alt="DI Logo" style="width: 300px;"></a>
            <br><br>
            <input type="text" id="surname" name="surname" class="search-input" placeholder="Surname -> Nikolaou" required>
            <br><br>
            <button type="submit" class="search-button">Αναζήτηση</button>
        </form>
    </nav>
        
    <h2 style="text-align: center;">Σε ποια συνέδρια συμμετείχε η πιλότος Νικολάου;</h2>


    <table class="grid-container center-table">
        <tr>
            <th>Ημερομηνία των συνεδριών</th>
            <th>Θεματικές ενότητες των συνεδριών</th>
        </tr>

        <?php
            
            include 'connDB.php';

            if ($conn->connect_error) {
                die('Σφάλμα κατά τη σύνδεση με τη βάση δεδομένων: ' . $conn->connect_error);
            }

            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $surname = $_POST["surname"];

            } else {

                $surname = ""; 
            }
            

                $sql = "SELECT meeting_date, meeting_subject
                        FROM pilot_meetings
                        WHERE pilots_surname = '$surname'
                        ORDER BY meeting_date ASC;";

            
                $result = $conn->query($sql);

           
                if ($result->num_rows > 0) {
                
                    while ($row = $result->fetch_assoc()) {
                        $meeting_date = $row['meeting_date'];
                        $meeting_subject = $row['meeting_subject'];
                        

                        echo '<tr>
                            <td>' . $meeting_date. '</td>
                            <td>' . $meeting_subject . '</td>
                        </tr>';
                    }

                } else {
                echo '<tr><td colspan="2">Δεν βρέθηκαν εγγραφές για την παραπάνω πιλότο 😞</td></tr>';
            }

            
            $conn->close();
        ?>
    </table>

    
    <div class="return-link">
        <a href="index.html">Επιστροφή στην αρχική σελίδα</a>
    </div>

    <footer>
        <p>Ιόνιο Πανεπιστήμιο | Τμήμα Πληροφορικής | Μάθημα: Bάσεις Δεδομένων Ι | Ακαδημαϊκό έτος: 2022 - 2023 | Κέρκυρα</p>
    </footer>
</body>
</html>
