<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>Ποια είναι τα πληρώματα των πτήσεων που αναχωρούν στις 13/06/2023 από Αθήνα για Κέρκυρα και σε ποιο ξενοδοχείο μένουν;</title>    
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

        ::placeholder {
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
        <a href="https://ionio.gr" target="_blank"><img class="logo-image" src="images/uni-logo.png" alt="Logo"></a>
        <a href="https://di.ionio.gr" target="_blank"><img class="right-logo-image" src="images/di.jpg" alt="DI Logo" style="width: 300px;"></a>
    </nav>
        
    <h2 style="text-align: center;">Ποια είναι τα πληρώματα των πτήσεων που αναχωρούν στις 13/06/2023 από Αθήνα για Κέρκυρα και σε ποιο ξενοδοχείο μένουν;</h2>

    <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" class="search-form">
        <br><br>
        <input type="text" id="origin" name="origin" class="search-input" placeholder="Origin -> Athens" required>
        <br><br>
        <input type="text" id="destination" name="destination" class="search-input" placeholder="Destination -> Corfu" required>
        <br><br>
        <input type="date" id="date" name="date" class="search-input" placeholder="Ημερομηνία" required>
        <br><br>
        <button type="submit" class="search-button">Αναζήτηση</button>
    </form>

    <table class="grid-container center-table">
        <tr>
            <th>Αριθμός πληρώματος</th>
            <th>Ονόματα πληρωμάτων</th>
            <th>Επώνυμα πληρωμάτων</th>
            <th>Επωνυμίες ξενοδοχείων</th>
        </tr>
        <?php
            
            include 'connDB.php';

            if ($conn->connect_error) {
                die('Σφάλμα κατά τη σύνδεση με τη βάση δεδομένων: ' . $conn->connect_error);
            }

            
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $date = $_POST["date"];
                $origin = $_POST["origin"];
                $destination = $_POST["destination"];

                
                $sql = "SELECT crew.crews_id, crew.crew_name, crew.crew_surname, hotels.hotels_name
                        FROM crew 
                        INNER JOIN flights_crews ON flights_crews.crew_id = crew.crews_id
                        INNER JOIN flights ON flights.flights_id = flights_crews.flight_id
                        INNER JOIN hotels ON hotels.hotels_id = flights_crews.hotel_id
                        WHERE flights.date = '$date' AND flights.origin = '$origin' AND flights.destination = '$destination';";

                
                $result = $conn->query($sql);

                
                if ($result->num_rows > 0) {
                    
                    while ($row = $result->fetch_assoc()) {
                        $crews_id = $row['crews_id'];
                        $crew_name = $row['crew_name'];
                        $crew_surname = $row['crew_surname'];
                        $hotels_name = $row['hotels_name'];

                        echo '<tr>
                                <td>' . $crews_id . '</td>
                                <td>' . $crew_name . '</td>
                                <td>' . $crew_surname . '</td>
                                <td>' . $hotels_name . '</td>
                            </tr>';
                    }

                } else {
                    echo '<tr><td colspan="4">Δεν βρέθηκαν εγγραφές για τα παραπάνω πληρώματα 😞</td></tr>';
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
