<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>Πτήσεις που αναχωρούν την Τρίτη 13/06/2023 από την Αθήνα για Κέρκυρα</title>    
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

    <h2 style="text-align: center;">Ποιες πτήσεις αναχωρούν την Τρίτη 13/06/2023 από Αθήνα για Κέρκυρα;</h2>

<?php
    // include the file with DB connection
    include 'connDB.php';

    if ($conn->connect_error) {
        die('Σφάλμα κατά τη σύνδεση με τη βάση δεδομένων: ' . $conn->connect_error);
    }

    // SQL query to execute
    $sql = "SELECT flights.flight_number, flights.date, gates.gate_name 
            FROM flights 
            INNER JOIN gates ON flights.gate_id = gates.gates_id 
            WHERE flights.origin = 'Athens' AND flights.destination = 'Corfu' AND flights.date = '2023-06-13' ";

    // Execute the query and get the results
    $result = $conn->query($sql);

    // Check if there are any results
    if ($result->num_rows > 0) {
        // Create an array to store the results
        $flights = array();

        // Fetch each row and add it to the flights array
        while ($row = $result->fetch_assoc()) {
            $flights[] = $row;
        }

        // Print the grid container opening tag
        echo '<div class="grid-container">';

        // Iterate over the flights array and display each flight
        foreach ($flights as $flight) {
            $flight_number = $flight['flight_number'];
            $date = $flight['date'];
            $gate_name = $flight['gate_name'];

            // Print each grid item
            echo '<div class="grid-item">
                    <p>Αριθμός πτήσης: ' . $flight_number . '</p>
                    <p>Ημερομηνία αναχώρησης: ' . $date . '</p>
                    <p>Πύλη εξόδου: ' . $gate_name . '</p>
                </div>';
        }

        // Print the grid container closing tag
        echo '</div>';

        // Print the return link
        echo '<a href="index.html" class="return-link">Επιστροφή στην αρχική σελίδα</a>';
    } else {
        // In case there are no records in the result set...
        echo '<p> Δεν βρέθηκαν εγγραφές για τις παραπάνω πτήσεις 😞 </p>';

        // Print the return link
        echo '<a href="index.html" class="return-link">Επιστροφή στην αρχική σελίδα</a>';
    }

    // Close the connection to the database
    $conn->close();
?>

    <footer>
        <p>Ιόνιο Πανεπιστήμιο | Τμήμα Πληροφορικής | Μάθημα: Bάσεις Δεδομένων Ι | Ακαδημαϊκό έτος: 2022 - 2023 | Κέρκυρα</p>
    </footer>

</body>
</html>
