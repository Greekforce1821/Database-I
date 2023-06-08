<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>Πόσοι από τους διαφημιστικούς χώρους είναι ενοικιασμένοι και ποιό το μέσο ενοίκιο τους;</title>    
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
    </style>
</head>
<body>
    <header>
        <h1>Airport DB User Group III</h1>
    </header>

    <nav>
        <a href="https://ionio.gr" target="_blank"><img class="logo-image" src="images/uni-logo.png" alt="Logo"></a>
        <a href="https://di.ionio.gr" target="_blank"><img class="right-logo-image" src="images/di.jpg" alt="DI Logo" style="width: 300px;"></a>
    </nav>
        
    <h2 style="text-align: center;">Πόσοι από τους διαφημιστικούς χώρους είναι ενοικιασμένοι και ποιό το μέσο ενοίκιο τους;</h2>


    <table class="grid-container center-table">
        <tr>
            <th>Αριθμός ενοικιασμένων χώρων</th>
            <th>Μέσο κόστος ενοικίασης</th>
        </tr>
        <?php
            
            include 'connDB.php';

            if ($conn->connect_error) {
                die('Σφάλμα κατά τη σύνδεση με τη βάση δεδομένων: ' . $conn->connect_error);
            }

            
            $sql = "SELECT COUNT(*) AS rented_count, AVG(rent_amount) AS avg_rent
                    FROM rented_spaces";

            
            $result = $conn->query($sql);

            
            if ($result->num_rows > 0) {
                
                while ($row = $result->fetch_assoc()) {
                    $rented_count = $row['rented_count'];
                    $avg_rent = $row['avg_rent'];

                    echo '<tr>
                            <td>' . $rented_count . '</td>
                            <td>' . $avg_rent . '</td>
                        </tr>';
                }

            } else {
                echo '<tr><td colspan="4">Δεν βρέθηκαν εγγραφές για τους παραπάνω χώρους ενοικίασης 😞</td></tr>';
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
