<!DOCTYPE html>
<?php
  $con = mysqli_connect("localhost", "review_user", "passw0rd", "wisper_rate_reviews_db");

  // Check connection
  if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

  //sort table results
  $sortOption = isset($_POST['sort']) ? $_POST['sort'] : 'Recent'; 
  
 
  if ($sortOption == 'Rating') {
    // Sort by Rating 
    $sql_statement = "SELECT pseudoname, review, rating FROM old_orchard_inn_reviews ORDER BY CAST(SUBSTRING_INDEX(rating, ' ', 1) AS DECIMAL) DESC";
  } else {
    // Sort by Recent 
    $sql_statement = "SELECT pseudoname, review, rating FROM old_orchard_inn_reviews ORDER BY added DESC";
  }

  $result = mysqli_query($con, $sql_statement);

  // Initialize a variable to hold error or success messages
  $message = '';

  
if ($_SERVER["REQUEST_METHOD"] == "POST") {
//format data for database submission
    $reviewerName = isset($_POST['reviewerName']) ? mysqli_real_escape_string($con, $_POST['reviewerName']) : '';
    $reviewerEmail = isset($_POST['reviewerEmail']) ? mysqli_real_escape_string($con, $_POST['reviewerEmail']) : '';
    $reviewText = isset($_POST['reviewText']) ? mysqli_real_escape_string($con, $_POST['reviewText']) : '';
    $rating = isset($_POST['rating']) ? $_POST['rating'] : '';

    // Check if the fields are empty
    if (empty($reviewerName) || empty($reviewerEmail) || empty($reviewText) || empty($rating)) {
        $message = "All fields are required.";
    } else {
        // Valid ratings
        $valid_ratings = ["5 ★", "4.5 ★", "4 ★", "3.5 ★", "3 ★", "2.5 ★", "2 ★", "1.5 ★", "1 ★"];

        // Validate rating
        if (!in_array($rating, $valid_ratings)) {
            $message = "Invalid rating.";
        } else {
            // Insert the data into the database
            $sql_statement = "INSERT INTO old_orchard_inn_reviews (pseudoname, email, review, rating) 
                              VALUES ('$reviewerName', '$reviewerEmail', '$reviewText', '$rating')";

            if (mysqli_query($con, $sql_statement)) {
                $message = "Review submitted successfully!";
            } else {
                $message = "Error: " . mysqli_error($con);
            }
        }
    }
}


   // Default to 'Recent' if nothing selected

?>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Local Restaurant Reviews</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
      body, html {
        margin: 0;
        padding: 0;
        background-color: black; /* Black background */
        color: white;
        overflow-x: hidden;
        height: 100%;
        display: flex;
        flex-direction: column;
      }
      header {
          background-color: #353074;
          text-align: center;
          padding: 10px 20px;
      }
      a:link {
        color: white;
        text-decoration: none;
    }
      nav {
          background-color: #3B3681;
      }
      .nav-icon {
        margin: 0 10px;
        color: rgb(0, 0, 0);
        font-size: 24px;
      }
      .scroll-container {
        display: flex;
        overflow-x: auto;
        -webkit-overflow-scrolling: touch;
        scrollbar-width: none; /* Hides scrollbar in Firefox */
        margin-top: 20px;
      }
      .scroll-container::-webkit-scrollbar {
        display: none; /* Hides scrollbar in Chrome, Safari, Opera */
      }
    </style>
  </head>
  <body class="d-flex flex-column min-vh-100">
    <!-- Header -->
    <header>
      <h1>Wisper Rate</h1>
    </header>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid justify-content-center">
        <span class="nav-icon">&#8962; <a href="../project.html" style="color: white;">Home</a></span>
        <span class="nav-icon">&#8505; <a href="../about.html"  style="color: white;">About</a></span>
      </div>
    </nav>
    <!-- Main Title -->
    <h3 style="text-align: center;">Old Orchard Inn & Spa</h3> 

    <!-- Reviews Slideshow Section -->
    
    <!--PUT CARDS HERE-->

<section class="container my-4">
      <h3 style="text-align: center;">Customer Reviews</h3>
      <div class="scroll-container">
      <?php
      if (mysqli_num_rows($result) > 0) {   
        for ($x = 0; $x <= 4; $x++) {   
          $row = mysqli_fetch_array($result); 
          if($row){
                echo '<div class="card mx-2" style="min-width: 300px;">';
                echo '<div class="card-body">';
                echo '<h5 class="card-title">'. $row['pseudoname'] .'</h5>';
                echo '<p class="card-text">' . $row['review'] . '</p>';
                echo '<p class="card-text"><small> Rating: ' . $row['rating'] . '</small></p>';
                echo '</div>';
                echo '</div>';
              } else {break;}
          }
      }
?>

      </div>
    </section>

    <!-- Submit and See Review Button -->
    <div class="container text-center my-4">
      <a href="" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">See All Reviews</a>
      <a href="" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#submitModal">Submit Review</a>
    </div> 

  <!-- See All Reviews Modal -->
  <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content" style="color: black;">
        <!-- Modal Header -->
        <div class="modal-header">
          <h5 class="modal-title" id="myModalLabel" >Title Reviews</h5>

          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <!-- Modal Body -->
        <div class="modal-body">
        <div class="container my-4">
        <label for="sort">Sort by:</label>
        <form method="POST" action="">
          <select name="sort" id="sort" onchange="this.form.submit()">
            <option value="Rating" <?php echo ($sortOption == 'Rating') ? 'selected' : ''; ?>>Highest Rating</option>
            <option value="Recent" <?php echo ($sortOption == 'Recent') ? 'selected' : ''; ?>>Recent</option>
          </select>          
        </form>
        </div>
        </div>
        <?php
        if (mysqli_num_rows($result) > 0) {
          while($row = mysqli_fetch_array(result: $result)) {
            echo '<div class="modal-body" style="color: black;">';
            echo '<div class="card mx-2" style="min-width: 300px;">';
            echo '<div class="card-body">';
            echo '<h5 class="card-title">'. $row['pseudoname'] .'</h5>';
            echo '<p class="card-text">' . $row['review'] . '</p>';
            echo '<p class="card-text"><small>' . $row['rating'] . '</small></p>';
            echo '</div>';
            echo '</div>';
            echo '</div>';
          }
        }
        ?>                
    </div>
   </div>
 </div>


 <!-- Submit Review Modal -->
 <div class="modal fade" id="submitModal" tabindex="-1" aria-labelledby="submitModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content" style="color: black;">
      <!-- Modal Header -->
      <div class="modal-header">
        <h2 class="text-center mb-4">Submit Your Review</h2> 
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <!-- Modal Body-->
       <div class="modal-body">
        <!-- Display message if any -->
        <?php if ($message): ?>
            <div class="alert alert-info"><?php echo $message; ?></div>
        <?php endif; ?>

        <form id="reviewForm" action="" method="POST">
        <div class="mb-3">
            <label for="reviewerName" class="form-label">Your Name</label>
            <input type="text" class="form-control" id="reviewerName" name="reviewerName" placeholder="Enter your name" required>
        </div>
        <div class="mb-3">
            <label for="reviewerEmail" class="form-label">Your Email</label>
            <input type="email" class="form-control" id="reviewerEmail" name="reviewerEmail" placeholder="Enter your email">
        </div>
        <div class="mb-3">
            <label for="reviewText" class="form-label">Your Review</label>
            <textarea class="form-control" id="reviewText" name="reviewText" rows="4" placeholder="Write your review here" required></textarea>
        </div>
        <div class="mb-3">
            <label for="rating" class="form-label">Rating</label>
            <select class="form-select" id="rating" name="rating" required>
              <option value="5 ★">5 ★</option>
              <option value="4.5 ★">4.5 ★</option>
              <option value="4 ★">4 ★</option>
              <option value="3.5 ★">3.5 ★</option>
              <option value="3 ★">3 ★</option>
              <option value="2.5 ★">2.5 ★</option>
              <option value="2 ★">2 ★</option>
              <option value="1.5 ★">1.5 ★</option>
              <option value="1 ★">1 ★</option>
            </select>
        </div>
        <div class="d-grid">
          <button type="submit" class="btn btn-primary">Submit Review</button>
        </div>
        </form>
       </div>
    </div>
  </div>
  </div>

    <!-- Footer -->
    <footer class="bg-primary text-white text-center py-3 mt-auto">
      <p>Review Page © 2025</p>
    </footer>   
    <!-- Bootstrap JS (Bundle includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>    
  </body>
</html>