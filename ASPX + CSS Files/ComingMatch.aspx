﻿<!DOCTYPE html>
<html lang="en">
<style>
    #wholescreen {
        background-color: #2E3034;
    }

    #searchBar {
        margin-top: 5px;
        width: 500px;
        height: 30px;
    }

    #navBar {
        height: 60px;
        background-color: #1B1C21;
        border: 1px solid #313131;
        box-sizing: border-box;
        padding: 20px;
    }

    #searchPlace {
        color: #A4A4A4;
        background-color: #313131;
        border: #313131;
        align-content: center;
    }

        #searchPlace::placeholder {
            color: #A4A4A4;
        }

    .left-column {
        float: left;
        width: 15%;
        height: 100vh;
        background-color: #1B1C21;
        border: 1px solid #313131;
        box-sizing: border-box;
        padding: 20px;
    }

    .right-column {
        float: left;
        width: 85%;
        background-color: #2E3034;
        border: 1px solid #313131;
        /* box-sizing: border-box; */
        /* height: 100vh; */
    }

    /* Clearfix to fix float issues */
    .clearfix::after {
        content: "";
        clear: both;
        display: table;
    }

    #menuButton {
        margin-top: 0px;
        color: #A4A4A4;
    }

    #menuHeading {
        padding: 20%;
        padding-bottom: 0px;
        margin-top: 40px;
        margin-left: -1rem;
        color: #A4A4A4;
        font-size: large;
    }

    #menuButton:hover {
        color: #ffffff;
    }

    #leagueButton {
        color: #A4A4A4;
        background-color: #1B1C21;
        border: 1px solid #1B1C21;
    }

        #leagueButton:active {
            border: 1px solid #1B1C21;
        }

    #leagues {
        background-color: #1B1C21;
        border: #1B1C21;
    }

    #leagueOption {
        color: #A4A4A4;
    }

        #leagueOption:hover {
            color: #ffffff;
            background-color: #1B1C21;
        }

    #standingTable {
        margin: 15px;
    }

    #standingsOfLeague {
        color: #ffffff;
        background-color: #2E3034;
        border: 0ch;
    }

    #teamLogo {
        width: 30px;
    }

    #nottinghamLogo {
        width: 20px;
    }

    #dropdownLeague {
        background-color: #2E3034;
    }

        #dropdownLeague:hover {
            background: #1B1C21;
        }

</style>

<head>
    <link rel="stylesheet" href="FastFootEdits.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FastFoot</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body id="wholescreen">
    <div class="left-column">
        <!-- Left column content goes here -->
        <nav class="nav flex-column" id="sideNav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <p id="menuHeading">MENU</p>
                <li class="nav-item">
                    <a class="nav-link active px-3 n2-e" aria-current="page" href="Dashboard.aspx" id="menuButton">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-window-fullscreen" viewBox="0 0 16 16">
                            <path d="M3 3.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0Zm1.5 0a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0Zm1 .5a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1Z" />
                            <path d="M.5 1a.5.5 0 0 0-.5.5v13a.5.5 0 0 0 .5.5h15a.5.5 0 0 0 .5-.5v-13a.5.5 0 0 0-.5-.5H.5ZM1 5V2h14v3H1Zm0 1h14v8H1V6Z" />
                        </svg> Dashboard
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active px-3 n2-e" aria-current="page" href="#" id="menuButton">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-reels" viewBox="0 0 16 16">
                            <path d="M6 3a3 3 0 1 1-6 0 3 3 0 0 1 6 0zM1 3a2 2 0 1 0 4 0 2 2 0 0 0-4 0z" />
                            <path d="M9 6h.5a2 2 0 0 1 1.983 1.738l3.11-1.382A1 1 0 0 1 16 7.269v7.462a1 1 0 0 1-1.406.913l-3.111-1.382A2 2 0 0 1 9.5 16H2a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h7zm6 8.73V7.27l-3.5 1.555v4.35l3.5 1.556zM1 8v6a1 1 0 0 0 1 1h7.5a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1z" />
                            <path d="M9 6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zM7 3a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                        </svg> Live Football
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active px-3 n2-e" aria-current="page" href="Standings.aspx" id="menuButton">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trophy" viewBox="0 0 16 16">
                            <path d="M2.5.5A.5.5 0 0 1 3 0h10a.5.5 0 0 1 .5.5c0 .538-.012 1.05-.034 1.536a3 3 0 1 1-1.133 5.89c-.79 1.865-1.878 2.777-2.833 3.011v2.173l1.425.356c.194.048.377.135.537.255L13.3 15.1a.5.5 0 0 1-.3.9H3a.5.5 0 0 1-.3-.9l1.838-1.379c.16-.12.343-.207.537-.255L6.5 13.11v-2.173c-.955-.234-2.043-1.146-2.833-3.012a3 3 0 1 1-1.132-5.89A33.076 33.076 0 0 1 2.5.5zm.099 2.54a2 2 0 0 0 .72 3.935c-.333-1.05-.588-2.346-.72-3.935zm10.083 3.935a2 2 0 0 0 .72-3.935c-.133 1.59-.388 2.885-.72 3.935zM3.504 1c.007.517.026 1.006.056 1.469.13 2.028.457 3.546.87 4.667C5.294 9.48 6.484 10 7 10a.5.5 0 0 1 .5.5v2.61a1 1 0 0 1-.757.97l-1.426.356a.5.5 0 0 0-.179.085L4.5 15h7l-.638-.479a.501.501 0 0 0-.18-.085l-1.425-.356a1 1 0 0 1-.757-.97V10.5A.5.5 0 0 1 9 10c.516 0 1.706-.52 2.57-2.864.413-1.12.74-2.64.87-4.667.03-.463.049-.952.056-1.469H3.504z" />
                        </svg> Standings
                    </a>
                </li>
            <li class="nav-item">
                    <a class="nav-link active px-3 n2-e" aria-current="page" href="#" id="menuButton">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trophy" viewBox="0 0 16 16">
                            <path d="M2.5.5A.5.5 0 0 1 3 0h10a.5.5 0 0 1 .5.5c0 .538-.012 1.05-.034 1.536a3 3 0 1 1-1.133 5.89c-.79 1.865-1.878 2.777-2.833 3.011v2.173l1.425.356c.194.048.377.135.537.255L13.3 15.1a.5.5 0 0 1-.3.9H3a.5.5 0 0 1-.3-.9l1.838-1.379c.16-.12.343-.207.537-.255L6.5 13.11v-2.173c-.955-.234-2.043-1.146-2.833-3.012a3 3 0 1 1-1.132-5.89A33.076 33.076 0 0 1 2.5.5zm.099 2.54a2 2 0 0 0 .72 3.935c-.333-1.05-.588-2.346-.72-3.935zm10.083 3.935a2 2 0 0 0 .72-3.935c-.133 1.59-.388 2.885-.72 3.935zM3.504 1c.007.517.026 1.006.056 1.469.13 2.028.457 3.546.87 4.667C5.294 9.48 6.484 10 7 10a.5.5 0 0 1 .5.5v2.61a1 1 0 0 1-.757.97l-1.426.356a.5.5 0 0 0-.179.085L4.5 15h7l-.638-.479a.501.501 0 0 0-.18-.085l-1.425-.356a1 1 0 0 1-.757-.97V10.5A.5.5 0 0 1 9 10c.516 0 1.706-.52 2.57-2.864.413-1.12.74-2.64.87-4.667.03-.463.049-.952.056-1.469H3.504z" />
                        </svg> Rankings
                    </a>
                </li>


        </nav>
        <br>
        <div class="dropdown">
            <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" id="leagueButton">
                FOOTBALL LEAGUES
            </button>
            <ul class="dropdown-menu" id="leagues">
                <li><a class="dropdown-item" href="#" id="leagueOption">Premier League</a></li>
                <li><a class="dropdown-item" href="#" id="leagueOption">La Liga</a></li>
                <li><a class="dropdown-item" href="#" id="leagueOption">Ligue 1</a></li>
                <li><a class="dropdown-item" href="#" id="leagueOption">Serie A</a></li>
                <li><a class="dropdown-item" href="#" id="leagueOption">Bundesliga</a></li>
            </ul>
        </div>
    </div>
    <div class="right-column">
        <!-- Right column content goes here -->
        <nav class="d-flex p-2" id="navBar">
            <form class="d-flex" role="search" id="searchBar">
                <input class="form-control me-2" type="search" placeholder="Type To Search" aria-label="Search" id="searchPlace">
            </form>
        </nav>
        <nav class="navbar navbar-expand-lg bg-opacity-50">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Dashboard.aspx" id="menuButton">Latest Match</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" id="menuButton">Coming Match</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" id="menuButton">Pre-Season</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" id="menuButton">Live Games</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>

    <table class="table table-dark table-striped">
                    <thead>
                        
                    </thead>
                    <tbody>
                        <tr>
                            <td>Barcelona</td>
                            <td>vs</td>
                            <td>Real Madrid</td>
                        </tr>
                        <tr>
                            <td>Liverpool</td>
                            <td>vs</td>
                            <td>Manchester United</td>
                        </tr>
                        <tr>
                            <td>Bayern Munich</td>
                            <td>vs</td>
                            <td>Borussia Dortmund</td>
                        </tr>
                         <tr>
                            <td>Manchester City</td>
                            <td>vs</td>
                            <td>Tottenham Hotspurs</td>
                        </tr>
                        <tr>
                            <td>Al-Nassr FC</td>
                            <td>vs</td>
                            <td>Al-Hilal FC</td>
                        </tr>
                        <tr>
                            <td>Juventus</td>
                            <td>vs</td>
                            <td>Napoli FC</td>
                        </tr>
        </table>
        </div>
   
    <div class="clearfix" id="Clearfix">
    </div>
</body>


</html>