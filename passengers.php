<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <link rel="icon" href="images/airplane-icon.ico" type="image/x-icon">
    <title>Ποιοι ταξιδιώτες ταξιδεύουν προς την Αθήνα στις 17/04/2023;</title>    
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

    <h2 style="text-align: center;">Ποιοι ταξιδιώτες ταξιδεύουν προς την Αθήνα στις 17/04/2023;</h2>

    <nav>
         <form class="search-form" method="POST" action="">
            <a href="https://ionio.gr" target="_blank"><img class="logo-image" src="images/uni-logo.png" alt="Logo"></a>
            <a href="https://di.ionio.gr" target="_blank"><img class="right-logo-image" src="images/di.jpg" alt="DI Logo" style="width: 300px;"></a>
            <br><br>
            <input type="text" id="origin" name="origin" class="search-input" placeholder="Destination -> Athens" required>
            <br><br>
            <input type="date" id="date" name="date" class="search-input" placeholder="Ημερομηνία" required>
            <br><br>
            <button type="submit" class="search-button">Αναζήτηση</button>
        </form>
    </form>
    </nav>
        
    <table class="grid-container center-table">
        <tr>
            <th>Αριθμός Επιβατών</th>
            <th>Αριθμός Εισιτηρίου</th>
            <th>Ονόματα Επιβατών</th>
            <th>Επώνυμα Επιβατών</th>
            <th>Διευθύνσεις κατοικίας των Επιβατών</th>
            <th>Ηλικία Επιβατών</th>
            <th>Ετήσιο εισόδημα των Επιβατών</th>
            <th>Αριθμοί πιστωτικών ή χρεωστικών καρτών των Επιβατών</th>
            <th>Αριθμός πτήσεων</th>
            <th>Ημερομηνία πτήσεων</th>
        </tr>
        <?php
            
            include 'connDB.php';

            if ($conn->connect_error) {
                die('Σφάλμα κατά τη σύνδεση με τη βάση δεδομένων: ' . $conn->connect_error);
            }

            
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $origin = $_POST["origin"];
                $date = $_POST['date'];

                
                $sql = "SELECT passengers.passengers_id, tickets.tickets_id, passengers.name, passengers.surname, passengers.address, passengers.age, passengers.income, passengers.num_credit_cards, flights.flight_number, flights.date
                        FROM passengers
                        INNER JOIN tickets ON tickets.passenger_id = passengers.passengers_id
                        INNER JOIN flights ON flights.flights_id = tickets.ticket_flight_id
                        WHERE flights.destination = '$origin' AND flights.date = '$date'
                        ORDER BY flights.flight_number, tickets.tickets_id;";

                
                $result = $conn->query($sql);

                
                if ($result->num_rows > 0) {
                   
                    while ($row = $result->fetch_assoc()) {
                        $id = $row['passengers_id'];
                        $tickets_id = $row['tickets_id'];
                        $name = $row['name'];
                        $surname = $row['surname'];
                        $address = $row['address'];
                        $age = $row['age'];
                        $income = $row['income'];
                        $num_credit_cards = $row['num_credit_cards'];
                        $flight_number = $row['flight_number'];
                        $date = $row['date'];

                        echo '<tr>
                            <td>' . $id . '</td>
                            <td>' . $tickets_id . '</td>
                            <td>' . $name . '</td>
                            <td>' . $surname . '</td>
                            <td>' . $address . '</td>
                            <td>' . $age . '</td>
                            <td>' . $income . '</td>
                            <td>' . $num_credit_cards . '</td>
                            <td>' . $flight_number . '</td>
                            <td>' . $date . '</td>
                        </tr>';
                    }

                } else {
                    echo '<tr><td colspan="10">Δεν βρέθηκαν εγγραφές για τους παραπάνω επιβάτες 😞</td></tr>';
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
