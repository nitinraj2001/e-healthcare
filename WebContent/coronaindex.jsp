<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   
    <!--icon-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--font-->
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet"> 
   
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    
    
    <style>
    
    
    
    * {
    margin: 0;
    padding: 0;
    font-family: 'Poppins';
    box-sizing: border-box;

}
body{
    display: flex;
    justify-content: center;
}
.container {
    min-width: 290px;
    max-width: 900px;
    margin: 15px 10px;
    text-align: center;
    border: 1px solid #777;
    border-radius: 5px;
}
h1{
    text-transform: uppercase;
    letter-spacing:2px ;

}
h2{
    color: darkblue;
}
h3{
    margin:10px 0 ;
}
#date {
    color: teal;
}
form input, form button {
    width:200px;
    height: 35px;
    border: 1px solid #ccc;
    padding: 0 5px;
    outline: none;
}
form button {
    width: 70px;
}
#name-country{
    color: #555;
    margin-top: 20px;
}
.content {
    margin: 10px 0;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    cursor: pointer;
}
.content .box{
    min-width: 270px;
    margin: 10px;
    border: 1px solid #ccc;
    padding: 15px;
    letter-spacing: 2px;
}
.content .box:hover{
    background: #eee4;

}
.content .box p{
    text-transform: uppercase;
    opacity: 0.7;
}
.confirmed h3, .confirmed i{
    color: crimson;
}
.recovered h3, .recovered i{
    color: green;
}
::-webkit-scrollbar{
    display: none;
}
    
    
    
    
    
    
    
    </style>
    
    
    
</head>
<body>
    <div class="container">
        <h1>Virus Corona</h1>
        <h2>Covid-19</h2>
        <h3 id="date">Date time</h3>

        <form autocomplete="off">    <!--When autocomplete is on, the browser automatically complete values based on values that the user has entered before.-->
             <input type="text" name="srch" id="srch" required
             list="countries" placeholder="Enter country name">
             <datalist id="countries">
                 
             </datalist>
             <button>Search</button>
        </form>
        <h2 id="name-country">The World</h2>
        <div class="content">
            <div class="box confirmed">
                <p>Confirmed</p>
                <h3>0</h3>
                <i class="fa fa-long-arrow-up">0</i>
            </div>
            <div class="box deaths">
                <p>Deaths</p>
                <h3>0</h3>
                <i class="fa fa-long-arrow-up">0</i>
            </div>
            <div class="box recovered">
                <p>Recovered</p>
                <h3>0</h3>
                <i class="fa fa-long-arrow-up">0</i>
            </div>

        </div>
        <div class="chart"></div>
    </div>
    <script src="app.js"></script>
</body>
</html>