<?php
include_once('db_connection.php');
include_once('session.php');

$id = null;
if (isset($_REQUEST['id'])) {
    $id = $_REQUEST['id'];
} else {
    echo "Resume Not Found";
    die;
}

$sql = "SELECT * FROM resume_data where id=$id";
$result = $conn->query($sql);

if (!$result->num_rows > 0) {
    echo "Resume Not Found";
    die;
}
$row = $result->fetch_all(MYSQLI_ASSOC)[0];
// Free result set
$result->free_result();

//fetching experience details from experience table
$sql = "SELECT * FROM resume_experiences where resume_id=$id";
$result = $conn->query($sql);
$experiences = [];
if ($result->num_rows > 0) {
    $experiences = $result->fetch_all(MYSQLI_ASSOC);
    // Free result set
    $result->free_result();
}

//fetching education details from education table
$sql = "SELECT * FROM resume_education where resume_id=$id";
$result = $conn->query($sql);
$education = [];
if ($result->num_rows > 0) {
    $education = $result->fetch_all(MYSQLI_ASSOC);
    // Free result set
    $result->free_result();
}

//fetching projects details from projects table
$sql = "SELECT * FROM resume_projects where resume_id=$id";
$result = $conn->query($sql);
$projects = [];
if ($result->num_rows > 0) {
    $projects = $result->fetch_all(MYSQLI_ASSOC);
    // Free result set
    $result->free_result();
}

//fetching certificates details from certificates table
$sql = "SELECT * FROM resume_certificates where resume_id=$id";
$result = $conn->query($sql);
$certificates = [];
if ($result->num_rows > 0) {
    $certificates = $result->fetch_all(MYSQLI_ASSOC);
    // Free result set
    $result->free_result();
}

$profilePic = "../assets/img/";
if ($row['profile_pic']) {
    $profilePic .= $row['profile_pic'];
} else {
    $profilePic .= 'default_profile.png';
}

?>




<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Template css -->
    <link rel="stylesheet" href="../css/template_style.css">
    <!-- print css -->
    <link rel="stylesheet" href="../css/print.css">
    <!-- font awesome css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
   <style>
    body {
    background: #ecf0f3;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    color: #2d3436;
    margin: 0;
    padding: 0;
}

#resume_container {
    background: #ffffff;
    border-radius: 15px;
    padding: 40px;
    max-width: 1000px;
    margin: 40px auto;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
    border-left: 8px solid #2980b9;
}

#personal_info {
    background: linear-gradient(135deg, #2c3e50, #34495e);
    color: white;
    padding: 25px;
    border-radius: 15px 0 0 15px;
    min-height: 100%;
}

#personal_info p,
#personal_info .links {
    margin: 10px 0;
}

#personal_info a {
    color: #f1c40f;
    text-decoration: none;
    word-wrap: break-word;
}

#skill .blocks,
#language .blocks,
#interest .blocks {
    display: inline-block;
    background: #16a085;
    padding: 6px 14px;
    margin: 5px 5px 0 0;
    border-radius: 20px;
    color: white;
    font-size: 14px;
}

#professional_info {
    background: #fdfdfd;
    padding: 30px;
    border-radius: 0 15px 15px 0;
}

#header #name {
    font-size: 36px;
    font-weight: 700;
    color: #2c3e50;
    margin-bottom: 5px;
}

#header #title {
    font-size: 20px;
    color: #7f8c8d;
    margin-bottom: 20px;
}

#objective {
    font-size: 15px;
    line-height: 1.6;
    margin-bottom: 25px;
}

h3 {
    color: #2980b9;
    border-bottom: 2px solid #2980b9;
    padding-bottom: 5px;
    margin-top: 35px;
    font-weight: bold;
}

.field_blocks {
    padding: 10px 0;
    border-bottom: 1px solid #ddd;
}

button#download {
    background-color: #2980b9;
    color: white;
    border: none;
    padding: 12px 25px;
    font-size: 16px;
    border-radius: 6px;
    cursor: pointer;
    transition: background 0.3s ease-in-out;
    margin-top: 40px;
}

button#download:hover {
    background-color: #1f6391;
}

.profile_img {
    width: 100%;
    max-width: 180px;
    height: auto;
    border-radius: 50%;
    margin: auto;
    display: block;
    box-shadow: 0 4px 10px rgba(255, 255, 255, 0.5);
}

/* For Print / Save as PDF */
@media print {
    body {
        background: white !important;
        color: black !important;
    }

    #resume_container {
        box-shadow: none !important;
        border-left: 0;
        border-radius: 0;
    }

    button#download {
        display: none !important;
    }

    a {
        color: black !important;
    }
}

   </style>

    <img src="<?= $profilePic; ?>" alt="profile_img" class="img-fluid profile_img" />
</head>

<body class="A4">
    <div id="resume_container" class="container">

        <div class="row">
            <!-- personal_info col -->
            <div class="col-md-4 pb-4" id="personal_info">
                <!-- profile_img -->
                <div class="container img_container mt-2">
                    <img src="<?= $profilePic; ?>" alt="profile_img" class="img-fluid profile_img" />
                </div>

                <!-- general_info -->
                <div class="container mt-4" id="general_info">

                    <!-- Email -->
                    <p>
                        <i class="fas fa-at icons"></i>
                        <?= $row['email'] ?>
                    </p>
                    <!-- contact -->
                    <p>
                        <i class="fas fa-phone icons"></i>
                        <?= $row['phone'] ?>
                    </p>
                    <!-- address -->
                    <p>
                        <i class="fas fa-map-marker-alt icons"></i>
                        <?= $row['address'] ?>
                    </p>

                    <!-- important links -->

                    <!-- git -->
                    <div class="links" id="git">
                        <i class="fab fa-git-square icons"></i>
                        <a href="<?= $row['github'] ?>" target="_blank"><?= $row['github'] ?></a>
                    </div>
                    <!-- linkedin -->
                    <div class="links" id="linkedin">
                        <i class="fab fa-linkedin icons"></i>
                        <a href="<?= $row['linkedin'] ?>"><?= $row['linkedin'] ?></a>
                    </div>
                    <!-- instagram -->
                    <div class="links" id="instagram">
                        <i class="fab fa-instagram-square icons"></i>
                        <a href="<?= $row['instagram'] ?>"><?= $row['instagram'] ?></a>
                    </div>
                </div>

                <!-- skill -->
                <div class="container mt-5" id="skill">
                    <h4>Skills</h4>
                    <hr>
                    <?php $skills = explode(',', $row['skill']);
                    foreach ($skills as $skill) { ?>
                        <span class="blocks mt-2"><?= $skill ?></span>
                    <?php } ?>
                </div>

                <!-- Languages -->
                <div class="container mt-5" id="language">
                    <h4>Languages</h4>
                    <hr>
                    <?php $languages = explode(',', $row['language']);
                    foreach ($languages as $language) { ?>
                        <span class="blocks"><?= $language ?></span>
                    <?php } ?>
                </div>


                <!-- interest -->
                <div class="container mt-5" id="interest">
                    <h4>Interests</h4>
                    <hr>
                    <?php $interests = explode(',', $row['interest']);
                    foreach ($interests as $interest) { ?>
                        <span class="blocks"><?= $interest ?></span>
                    <?php } ?>
                </div>



            </div>

            <!-- professional_info col -->
            <div class="col-md-8" id="professional_info">

                <div id="header">
                    <span id="name" class="text-center"><?= $row['name'] ?></span>
                    <span id="title" class="text-center"><?= $row['title'] ?></span>
                    <p id="objective"><?= $row['career_objective'] ?></p>
                </div>

                <div id="content">

                    <!-- Experience -->
                    <div class="container" id="experience">
                        <h3>Work Experience</h3>
                        <hr>
                        <?php foreach ($experiences as $expr) { ?>
                            <div class="experience_field field_blocks">
                                <span class="expr_title title fields"><?= $expr['position'] ?></span>
                                <span class="expr_company fields"><?= $expr['company'] ?></span>
                                <span class="expr_duration duration fields"><?= $expr['duration'] ?></span>
                            </div>
                        <?php } ?>
                    </div>

                    <!-- Education -->
                    <div class="container mt-2" id="education">
                        <h3>Educational Qualification</h3>
                        <hr>
                        <?php foreach ($education as $educ) { ?>
                            <div class="education_field field_blocks">
                                <span class="educ_course title fields"><?= $educ['course'] ?></span>
                                <span class="educ_prcnt fields"><?= $educ['percentage'] ?></span>
                                <span class="educ_college fields"><?= $educ['college'] ?></span>
                                <span class="educ_duration duration fields"><?= $educ['duration'] ?></span>
                            </div>
                        <?php } ?>
                    </div>

                    <!-- Projects -->
                    <div class="container mt-2" id="project">
                        <h3>Personal Projects</h3>
                        <hr>
                        <?php foreach ($projects as $proj) { ?>
                            <div class="project_field field_blocks">
                                <span class="proj_title title fields"><?= $proj['title'] ?></span>
                                <span class="proj_desc fields"><?= $proj['description'] ?></span>
                            </div>
                        <?php } ?>
                    </div>

                    <!-- Certificates -->
                    <div class="container mt-2" id="certificate">
                        <h3>Certificates</h3>
                        <hr>
                        <?php foreach ($certificates as $cert) { ?>
                            <div class="certificate_field field_blocks">
                                <span class="cert_title title fields"><?= $cert['title'] ?></span>
                                <span class="cert_desc fieldss"><?= $cert['description'] ?></span>
                                <span class="cert_date duration fields"><?= $cert['date'] ?></span>
                            </div>
                        <?php } ?>
                    </div>

                    <!-- Declaration -->
                    <div class="container mt-2" id="declaration">
                        <h3>Declaration</h3>
                        <hr>
                        <span class="fields">I hereby declare that the above particulars of facts and information stated
                            are true, correct and complete to the best of my belief and knowledge.</span>
                    </div>


                </div>

            </div>
        </div>

    </div>
    <div class="container text-center m-5">
        <button class="btn btn-primary" name="download" id="download" onclick="printPageArea('resume_container')" ;>Download Resume</button>
    </div>

    <!-- Font icon script -->
    <script src="https://kit.fontawesome.com/5c3f7a5924.js" crossorigin="anonymous"></script>

    <script>
        function printPageArea(areaID) {
            var getFullContent = document.body.innerHTML;
            let printsection = document.getElementById(areaID).innerHTML;
            document.body.innerHTML = printsection;
            window.print();
            document.body.innerHTML = getFullContent;
        }
    </script>
</body>


</html>