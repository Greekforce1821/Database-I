<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <link rel="icon" href="images/airplane-icon.ico" type="image/x-icon">
    <title>Ποιες είναι οι πτήσεις που αναχωρούν την Τρίτη 13/06/2023 από την Αθήνα για Κέρκυρα;</title>    
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

        .grid-container {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            grid-gap: 10px;
            margin-top: 20px;
        }

        .grid-item {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        .return-link {
            display: block;
            text-align: center;
            margin-top: 20px;
        }

        footer {
            background-color: #f2f2f2;
            padding: 10px;
            text-align: center;
            position: absolute;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>Airport DB User Group III</h1>
    </header>

    <h2 style="text-align: center;">Ποιες είναι οι πτήσεις που αναχωρούν την Τρίτη 13/06/2023 από την Αθήνα για Κέρκυρα;</h2>

    <nav>
        <form class="search-form" method="POST" action="">
            <a href="https://ionio.gr" target="_blank"><img class="logo-image" src="images/uni-logo.png" alt="Logo"></a>
            <a href="https://di.ionio.gr" target="_blank"><img class="right-logo-image" src="images/di.jpg" alt="DI Logo" style="width: 300px;"></a>
            <br><br>
            <input type="text" id="origin" name="origin" class="search-input" placeholder="Origin -> Athens" required>
            <br><br>
            <input type="text" id="destination" name="destination" class="search-input" placeholder="Destination -> Corfu" required>
            <br><br>
            <input type="date" id="date" name="date" class="search-input" placeholder="Ημερομηνία" required>
            <br><br>
            <button type="submit" class="search-button">Αναζήτηση</button>
        </form>
    </nav>

    <?php

    include 'connDB.php';

    if ($conn->connect_error) {
        die('Σφάλμα κατά τη σύνδεση με τη βάση δεδομένων: ' . $conn->connect_error);
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $origin = $_POST["origin"];
        $destination = $_POST["destination"];
        $date = $_POST["date"];


        $sql = "SELECT flights.flight_number, flights.date, gates.gate_name 
                FROM flights 
                INNER JOIN gates ON flights.gate_id = gates.gates_id 
                WHERE flights.origin = '$origin' AND flights.destination = '$destination' AND flights.date = '$date' ";


        $result = $conn->query($sql);


        if ($result->num_rows > 0) {

            $flights = array();

            
            while ($row = $result->fetch_assoc()) {
                $flights[] = $row;
            }

            
            echo '<div class="grid-container">';

            
            foreach ($flights as $flight) {
                $flight_number = $flight['flight_number'];
                $date = $flight['date'];
                $gate_name = $flight['gate_name'];

              
                echo '<div class="grid-item">
                        <p>Αριθμός πτήσης: ' . $flight_number . '</p>
                        <p>Ημερομηνία αναχώρησης: ' . $date . '</p>
                        <p>Πύλη εξόδου: ' . $gate_name . '</p>
                    </div>';
            }

            
            echo '</div>';
        } else {
            
            echo '<p> Δεν βρέθηκαν εγγραφές για τις παραπάνω πτήσεις 😞 </p>';
        }
    }

    
    $conn->close();
    ?>

   
    <div class="return-link">
        <a href="index.html">Επιστροφή στην αρχική σελίδα</a>
    </div>

    <footer>
        <p>Ιόνιο Πανεπιστήμιο | Τμήμα Πληροφορικής | Μάθημα: Βάσεις Δεδομένων Ι | Ακαδημαϊκό έτος: 2022 - 2023 | Κέρκυρα</p>
    </footer>

</body>
</html>
