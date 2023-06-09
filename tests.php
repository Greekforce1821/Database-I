<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <link rel="icon" href="images/airplane-icon.ico" type="image/x-icon">
    <title>Ποια ήταν τα test που έγιναν σε όλα τα αεροπλάνα που αναχώρησαν από την Αθήνα στις 18/03/2023;</title>    
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

    <h2 style="text-align: center;">Ποια ήταν τα test που έγιναν σε όλα τα αεροπλάνα που αναχώρησαν από την Αθήνα στις 18/03/2023;</h2>

    <nav>
         <form class="search-form" method="POST" action="">
            <a href="https://ionio.gr" target="_blank"><img class="logo-image" src="images/uni-logo.png" alt="Logo"></a>
            <a href="https://di.ionio.gr" target="_blank"><img class="right-logo-image" src="images/di.jpg" alt="DI Logo" style="width: 300px;"></a>
            <br><br>
            <input type="text" id="origin" name="origin" class="search-input" placeholder="Origin -> Athens" required>
            <br><br>
            <input type="date" id="date" name="date" class="search-input" placeholder="Ημερομηνία" required>
            <br><br>
            <button type="submit" class="search-button">Αναζήτηση</button>
        </form>
    </form>
    </nav>


    <table class="grid-container center-table">
    <?php
        include 'connDB.php';

        if ($conn->connect_error) {
            die('Σφάλμα κατά τη σύνδεση με τη βάση δεδομένων: ' . $conn->connect_error);
        }

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $origin = $_POST["origin"];
            $date = $_POST["date"];

            $sql = "SELECT tests.*
                    FROM tests
                    INNER JOIN flights ON flights.flights_id = tests.flights_id_con
                    WHERE flights.origin = '$origin' AND flights.date = '$date';";

            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                echo '
                    <tr>
                        <th>Αριθμοί των Test</th>
                        <th>Oνόματα των Test</th>
                        <th>Αριθμοί τμημάτων των Test</th>
                        <th>Μέρη των αεροπλάνων που ελέγχθηκαν</th>
                        <th>Αριθμοί των Ελεγκτών κατά την διάρκεια των Τest</th>
                        <th>Ημερομηνία ολοκλήρωσης των Test</th>
                        <th>Αποτελέσματα των Test</th>
                    </tr>';

                while ($row = $result->fetch_assoc()) {
                    $tests_id = $row['tests_id'];
                    $test_name = $row['test_name'];
                    $section_number = $row['section_number'];
                    $part_of_airplane_examined = $row['part_of_airplane_examined'];
                    $technician_performing_test_id = $row['technician_performing_test_id'];
                    $completion_date = $row['completion_date'];
                    $test_result = $row['test_result'];

                    echo '<tr>
                            <td>' . $tests_id . '</td>
                            <td>' . $test_name . '</td>
                            <td>' . $section_number . '</td>
                            <td>' . $part_of_airplane_examined . '</td>
                            <td>' . $technician_performing_test_id . '</td>
                            <td>' . $completion_date . '</td>
                            <td>' . $test_result . '</td>
                        </tr>';
                }
            } else {
                echo '<tr><td colspan="7">Δεν βρέθηκαν εγγραφές για τα παραπάνω Test 😞</td></tr>';
            }
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
