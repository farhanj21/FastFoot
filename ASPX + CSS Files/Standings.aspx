<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="standingsEdits.css" />
    <title>FastFoot</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body id="wholescreen">
     <div class="left-column">
        <!-- Left column content goes here -->
        <nav class="nav flex-column" id="sideNav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <p id="fHeading">FASTFOOT</p>
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
                    <a class="nav-link active px-3 n2-e" aria-current="page" href="Rankings.aspx" id="menuButton">
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
            <div id="standingTable">
                <P class="text-white fw-bold form-control-lg"> <img src="https://www.freepnglogos.com/uploads/trophy-png/gold-trophy-shiny-png-0.png" alt="Trophy" id="teamLogo"> STANDINGS</P>
                <select name="StandingsOfLeague" id="standingsOfLeague">
                    <option value="premiereLeague" id="dropdownLeague">Premier League</option>
                    <option value="laLiga" id="dropdownLeague">La Liga</option>
                    <option value="ligue1" id="dropdownLeague">Ligue 1</option>
                    <option value="serieA" id="dropdownLeague">Serie A</option>
                    <option value="bundesliga" id="dropdownLeague">Bundesliga</option>
                </select>
                <br>
                <br>
                    <table class="table table-dark table-striped" id="standingsTable1">
                    <thead>
                        <tr>
                          <th scope="col">#</th>
                          <th scope="col">Team</th>
                          <th scope="col">PL</th>
                          <th scope="col">W</th>
                          <th scope="col">D</th>
                          <th scope="col">L</th>
                          <th scope="col">GD</th>
                          <th scope="col">PTS</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">1</th>
                          <td> <img src="https://upload.wikimedia.org/wikipedia/en/5/53/Arsenal_FC.svg" alt="Arsenal" id="teamLogo"> Arsenal</td>
                          <td>28</td>
                          <td>22</td>
                          <td>3</td>
                          <td>3</td>
                          <td>40</td>
                          <td>69</td>
                        </tr>
                        <tr>
                          <th scope="row">2</th>
                          <td> <img src="https://ww1.freelogovectors.net/svg02/manchester_city_football_club_logo.svg" alt="Manchester City" id="teamLogo"> Manchester City</td>
                          <td>27</td>
                          <td>19</td>
                          <td>4</td>
                          <td>4</td>
                          <td>42</td>
                          <td>61</td>
                        </tr>
                        <tr>
                          <th scope="row">3</th>
                          <td> <img src="https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4e7.png" alt="Manchester United" id="teamLogo"> Manchester United</td>
                          <td>26</td>
                          <td>15</td>
                          <td>5</td>
                          <td>6</td>
                          <td>6</td>
                          <td>50</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td> <img src="https://assets.stickpng.com/images/580b57fcd9996e24bc43c4ee.png" alt="Tottenham Hotspur" id="teamLogo"> Tottenham Hotspur</td>
                            <td>28</td>
                            <td>15</td>
                            <td>4</td>
                            <td>9</td>
                            <td>12</td>
                            <td>49</td>
                          </tr>
                          <tr>
                            <th scope="row">5</th>
                            <td> <img src="https://upload.wikimedia.org/wikipedia/hif/2/25/Newcastle_United_Logo.png" alt="Newcastle United" id="teamLogo"> Newcastle United</td>
                            <td>26</td>
                            <td>12</td>
                            <td>11</td>
                            <td>3</td>
                            <td>20</td>
                            <td>47</td>
                          </tr>
                          <tr>
                            <th scope="row">6</th>
                            <td><img src="https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4e5.png" alt="liverpool" id="teamLogo"> Liverpool</td>
                            <td>26</td>
                            <td>12</td>
                            <td>6</td>
                            <td>8</td>
                            <td>18</td>
                            <td>42</td>
                          </tr>
                          <tr>
                            <th scope="row">7</th>
                            <td> <img src="https://images.fotmob.com/image_resources/logo/teamlogo/10204_xsmall.png" alt="Brighton" id="teamLogo"> Brighton & Hove Albion</td>
                            <td>25</td>
                            <td>12</td>
                            <td>6</td>
                            <td>7</td>
                            <td>15</td>
                            <td>42</td>
                          </tr>
                          <tr>
                            <th scope="row">8</th>
                            <td> <img src="https://images.fotmob.com/image_resources/logo/teamlogo/9937_xsmall.png" alt="Brentford" id="teamLogo"> Brentford</td>
                            <td>27</td>
                            <td>10</td>
                            <td>12</td>
                            <td>5</td>
                            <td>9</td>
                            <td>42</td>
                          </tr>
                          <tr>
                            <th scope="row">9</th>
                            <td> <img src="https://ww1.freelogovectors.net/wp-content/uploads/2018/09/Fulham-Football-Club-Logo.png?lossy=1&resize=395%2C523&ssl=1" alt="Fulham" id="teamLogo"> Fulham</td>
                            <td>27</td>
                            <td>11</td>
                            <td>6</td>
                            <td>10</td>
                            <td>1</td>
                            <td>39</td>
                          </tr>
                          <tr>
                            <th scope="row">10</th>
                            <td> <img src="https://assets.stickpng.com/images/580b57fcd9996e24bc43c4e1.png" alt="Chelsea" id="teamLogo"> Chelsea</td>
                            <td>27</td>
                            <td>10</td>
                            <td>8</td>
                            <td>9</td>
                            <td>1</td>
                            <td>38</td>
                          </tr>
                          <tr>
                            <th scope="row">11</th>
                            <td> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/f/f9/Aston_Villa_FC_crest_%282016%29.svg/1200px-Aston_Villa_FC_crest_%282016%29.svg.png" alt="Aston Villa" id="teamLogo"> Aston Villa</td>
                            <td>27</td>
                            <td>11</td>
                            <td>5</td>
                            <td>11</td>
                            <td>-4</td>
                            <td>38</td>
                          </tr>
                          <tr>
                            <th scope="row">12</th>
                            <td> <img src="https://upload.wikimedia.org/wikipedia/hif/c/c1/Crystal_Palace_FC_logo.png" alt="Crystal Palace" id="teamLogo"> Crystal Palace</td>
                            <td>28</td>
                            <td>6</td>
                            <td>9</td>
                            <td>13</td>
                            <td>-16</td>
                            <td>27</td>
                          </tr>
                          <tr>
                            <th scope="row">13</th>
                            <td> <img src="https://icon2.cleanpng.com/20180329/yke/kisspng-molineux-stadium-craven-cottage-wolverhampton-wand-ham-5abce6fdab2906.6070930315223293417011.jpg" alt="Wolves" id="teamLogo"> Wolves</td>
                            <td>28</td>
                            <td>7</td>
                            <td>6</td>
                            <td>15</td>
                            <td>-19</td>
                            <td>27</td>
                          </tr>
                          <tr>
                            <th scope="row">14</th>
                            <td> <img src="https://ww1.freelogovectors.net/wp-content/uploads/2018/09/leeds-united-logo.png?lossy=1&resize=395%2C489&ssl=1" alt="Leeds United" id="teamLogo"> Leeds United</td>
                            <td>27</td>
                            <td>6</td>
                            <td>8</td>
                            <td>13</td>
                            <td>-9</td>
                            <td>26</td>
                          </tr>
                          <tr>
                            <th scope="row">15</th>
                            <td> <img src="https://assets.stickpng.com/images/580b57fcd9996e24bc43c4e3.png" alt="Everton" id="teamLogo"> Everton</td>
                            <td>28</td>
                            <td>6</td>
                            <td>8</td>
                            <td>14</td>
                            <td>-18</td>
                            <td>26</td>
                          </tr>
                          <tr>
                            <th scope="row">16</th>
                            <td> <img src="https://images.fotmob.com/image_resources/logo/teamlogo/10203_xsmall.png" alt="Nottingham Forest" id="teamLogo"> Nottingham Forest</td>
                            <td>27</td>
                            <td>6</td>
                            <td>8</td>
                            <td>13</td>
                            <td>-27</td>
                            <td>26</td>
                          </tr>
                          <tr>
                            <th scope="row">17</th>
                            <td> <img src="https://upload.wikimedia.org/wikipedia/hif/a/ab/Leicester_City_crest.png" alt="Leicester City" id="teamLogo"> Leicester City</td>
                            <td>27</td>
                            <td>7</td>
                            <td>4</td>
                            <td>16</td>
                            <td>-9</td>
                            <td>25</td>
                          </tr>
                          <tr>
                            <th scope="row">18</th>
                            <td> <img src="https://logodownload.org/wp-content/uploads/2019/05/west-ham-united-logo-1.png" alt="West Ham United" id="teamLogo"> West Ham United</td>
                            <td>26</td>
                            <td>6</td>
                            <td>6</td>
                            <td>14</td>
                            <td>-10</td>
                            <td>24</td>
                          </tr>
                          <tr>
                            <th scope="row">19</th>
                            <td> <img src="https://logodownload.org/wp-content/uploads/2019/10/bournemouth-fc-logo-1.png" alt="AFC Bournemouth" id="teamLogo"> AFC Bournemouth</td>
                            <td>27</td>
                            <td>6</td>
                            <td>6</td>
                            <td>15</td>
                            <td>-29</td>
                            <td>24</td>
                          </tr>
                          <tr>
                            <th scope="row">20</th>
                            <td> <img src="https://upload.wikimedia.org/wikipedia/hif/8/85/FC_Southampton.png" alt="Southampton" id="teamLogo"> Southampton</td>
                            <td>28</td>
                            <td>6</td>
                            <td>5</td>
                            <td>17</td>
                            <td>-23</td>
                            <td>23</td>
                          </tr>

                          
                      </tbody>
                  </table>
                <table class="table table-dark table-striped" id="standingsTale2">
                    <thead>
                        <tr>
                          <th scope="col">#</th>
                          <th scope="col">Team</th>
                          <th scope="col">PL</th>
                          <th scope="col">W</th>
                          <th scope="col">D</th>
                          <th scope="col">L</th>
                          <th scope="col">GD</th>
                          <th scope="col">PTS</th>

                        </tr>
                      </thead>
                      <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td> <img src="https://cdn.freebiesupply.com/logos/large/2x/fc-barcelona-logo-png-transparent.png" alt="Aston Villa" id="teamLogo"> FC Barcelona</td>
                            <td>27</td>
                            <td>11</td>
                            <td>5</td>
                            <td>11</td>
                            <td>-4</td>
                            <td>38</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td> <img src="https://www.freepnglogos.com/uploads/real-madrid-logo-png/real-madrid-logo-real-madrid-kits-dream-league-soccer-fts-kuchalana-4.png" alt="Crystal Palace" id="teamLogo"> Real Madrid</td>
                            <td>28</td>
                            <td>6</td>
                            <td>9</td>
                            <td>13</td>
                            <td>-16</td>
                            <td>27</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/f/f4/Atletico_Madrid_2017_logo.svg/1200px-Atletico_Madrid_2017_logo.svg.png" alt="Wolves" id="teamLogo"> Atletico Madrid</td>
                            <td>28</td>
                            <td>7</td>
                            <td>6</td>
                            <td>15</td>
                            <td>-19</td>
                            <td>27</td>
                          </tr>
                          <tr>
                            <th scope="row">4</th>
                            <td> <img src="https://assets.stickpng.com/images/584ad36ab519ea740933a8d3.png" alt="Leeds United" id="teamLogo"> Real Sociedad</td>
                            <td>27</td>
                            <td>6</td>
                            <td>8</td>
                            <td>13</td>
                            <td>-9</td>
                            <td>26</td>
                          </tr>
                          <tr>
                            <th scope="row">5</th>
                            <td> <img src="https://logos-world.net/wp-content/uploads/2020/11/Real-Betis-Logo.png" alt="Everton" id="teamLogo"> Real Betis</td>
                            <td>28</td>
                            <td>6</td>
                            <td>8</td>
                            <td>14</td>
                            <td>-18</td>
                            <td>26</td>
                          </tr>
                          <tr>
                            <th scope="row">6</th>
                            <td> <img src="https://assets.stickpng.com/thumbs/584a9b57b080d7616d298779.png" alt="Nottingham Forest" id="teamLogo"> Villareal</td>
                            <td>27</td>
                            <td>6</td>
                            <td>8</td>
                            <td>13</td>
                            <td>-27</td>
                            <td>26</td>
                          </tr>
                          <tr>
                            <th scope="row">7</th>
                            <td> <img src="https://logos-world.net/wp-content/uploads/2020/11/Athletic-Bilbao-Logo.png" alt="Leicester City" id="teamLogo"> Athletic Club</td>
                            <td>27</td>
                            <td>7</td>
                            <td>4</td>
                            <td>16</td>
                            <td>-9</td>
                            <td>25</td>
                          </tr>
                          <tr>
                            <th scope="row">8</th>
                            <td> <img src="https://cdn.freebiesupply.com/logos/large/2x/rayo-vallecano-logo-png-transparent.png" alt="West Ham United" id="teamLogo"> Rayo Vallecano</td>
                            <td>26</td>
                            <td>6</td>
                            <td>6</td>
                            <td>14</td>
                            <td>-10</td>
                            <td>24</td>
                          </tr>
                          <tr>
                            <th scope="row">9</th>
                            <td> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/d/db/Osasuna_logo.svg/1200px-Osasuna_logo.svg.png" alt="AFC Bournemouth" id="teamLogo"> Osasuna</td>
                            <td>27</td>
                            <td>6</td>
                            <td>6</td>
                            <td>15</td>
                            <td>-29</td>
                            <td>24</td>
                          </tr>
                          <tr>
                            <th scope="row">10</th>
                            <td> <img src="https://upload.wikimedia.org/wikipedia/en/7/7a/Girona_FC_new_logo.png" alt="Southampton" id="teamLogo"> Girona</td>
                            <td>28</td>
                            <td>6</td>
                            <td>5</td>
                            <td>17</td>
                            <td>-23</td>
                            <td>23</td>
                          </tr>
                          <tr>
                            <th scope="row">11</th>
                            <td> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/1/12/RC_Celta_de_Vigo_logo.svg/1200px-RC_Celta_de_Vigo_logo.svg.png" alt="Aston Villa" id="teamLogo"> Celta Vigo</td>
                            <td>27</td>
                            <td>11</td>
                            <td>5</td>
                            <td>11</td>
                            <td>-4</td>
                            <td>38</td>
                          </tr>
                          <tr>
                            <th scope="row">12</th>
                            <td> <img src="https://assets.stickpng.com/thumbs/584ad3aeb519ea740933a8dc.png" alt="Crystal Palace" id="teamLogo"> Mallorca</td>
                            <td>28</td>
                            <td>6</td>
                            <td>9</td>
                            <td>13</td>
                            <td>-16</td>
                            <td>27</td>
                          </tr>
                          <tr>
                            <th scope="row">13</th>
                            <td> <img src="https://assets.stickpng.com/images/584ad291b519ea740933a8ba.png" alt="Wolves" id="teamLogo"> Sevilla</td>
                            <td>28</td>
                            <td>7</td>
                            <td>6</td>
                            <td>15</td>
                            <td>-19</td>
                            <td>27</td>
                          </tr>
                          <tr>
                            <th scope="row">14</th>
                            <td> <img src="http://assets.stickpng.com/thumbs/584ad4b1b519ea740933a8fc.png" alt="Leeds United" id="teamLogo"> Getafe</td>
                            <td>27</td>
                            <td>6</td>
                            <td>8</td>
                            <td>13</td>
                            <td>-9</td>
                            <td>26</td>
                          </tr>
                          <tr>
                            <th scope="row">15</th>
                            <td> <img src="https://assets.stickpng.com/images/584ad354b519ea740933a8d1.png" alt="Everton" id="teamLogo"> Vallodid</td>
                            <td>28</td>
                            <td>6</td>
                            <td>8</td>
                            <td>14</td>
                            <td>-18</td>
                            <td>26</td>
                          </tr>
                          <tr>
                            <th scope="row">16</th>
                            <td> <img src="https://assets.stickpng.com/thumbs/584ad7abb519ea740933a953.png" alt="Nottingham Forest" id="teamLogo"> Cadiz</td>
                            <td>27</td>
                            <td>6</td>
                            <td>8</td>
                            <td>13</td>
                            <td>-27</td>
                            <td>26</td>
                          </tr>
                          <tr>
                            <th scope="row">17</th>
                            <td> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/d/d6/Rcd_espanyol_logo.svg/1200px-Rcd_espanyol_logo.svg.png" alt="Leicester City" id="teamLogo"> Espanyol</td>
                            <td>27</td>
                            <td>7</td>
                            <td>4</td>
                            <td>16</td>
                            <td>-9</td>
                            <td>25</td>
                          </tr>
                          <tr>
                            <th scope="row">18</th>
                            <td> <img src="https://assets.stickpng.com/images/584ad186b519ea740933a89e.png" alt="West Ham United" id="teamLogo"> Valencia</td>
                            <td>26</td>
                            <td>6</td>
                            <td>6</td>
                            <td>14</td>
                            <td>-10</td>
                            <td>24</td>
                          </tr>
                          <tr>
                            <th scope="row">19</th>
                            <td> <img src="https://assets.stickpng.com/images/584ad245b519ea740933a8b3.png" alt="AFC Bournemouth" id="teamLogo"> Almeria</td>
                            <td>27</td>
                            <td>6</td>
                            <td>6</td>
                            <td>15</td>
                            <td>-29</td>
                            <td>24</td>
                          </tr>
                          <tr>
                            <th scope="row">20</th>
                            <td> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Elche_CF_logo.svg/1200px-Elche_CF_logo.svg.png" alt="Southampton" id="teamLogo"> Elche</td>
                            <td>28</td>
                            <td>6</td>
                            <td>5</td>
                            <td>17</td>
                            <td>-23</td>
                            <td>23</td>
                          </tr>

                      </tbody>
                  </table>
            </div>

          <div class="clearfix" id="clearfix">
          </div>
              <script>
                  document.addEventListener("DOMContentLoaded", function () {
                      // Get the dropdown menu and the tables
                      const dropdownMenu = document.getElementById("standingsOfLeague");
                      const standingsTable1 = document.getElementById("standingsTable1");
                      const standingsTable2 = document.getElementById("standingsTale2"); // Typo in the given HTML, it should be "standingsTable2"

                      // Function to show/hide tables based on the dropdown menu value
                      function updateTableDisplay() {
                          switch (dropdownMenu.value) {
                              case "premiereLeague":
                                  standingsTable1.style.display = "table";
                                  standingsTable2.style.display = "none";
                                  break;
                              case "laLiga":
                                  standingsTable1.style.display = "none";
                                  standingsTable2.style.display = "table";
                                  break;
                              // Add cases for other leagues here
                              default:
                                  standingsTable1.style.display = "none";
                                  standingsTable2.style.display = "none";
                          }
                      }

                      // Initially update the table display
                      updateTableDisplay();

                      // Add the event listener for changes in the dropdown menu value
                      dropdownMenu.addEventListener("change", updateTableDisplay);
                  });
              </script>
    </body>
    
</html>
