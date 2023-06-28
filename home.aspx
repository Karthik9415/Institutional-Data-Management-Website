<%@ Page Title="HOME" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="website.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <script src=
"https://code.jquery.com/jquery-3.4.1.min.js">
    </script>

<script>

    
       

    function showPage() {
  var sel = document.getElementById('pages');

  var option = sel.options[sel.selectedIndex].value;
        if (option == "0") {
            swal("Mandatory!", "Choose an option!", "warning");
        }
        else {
            window.open(option + ".aspx", "_self");
        }
       
       
    }

    function ddlselect() {
        var d = document.getElementById("pages");
        var displaytext = d.options[d.selectedIndex].value;
        if (displaytext == "form1") {
            document.getElementById("area").value = "PREVIEW OF FORM 3.1 \n\n3.1.2   INSTITUTION PROVIDES SEED MONEY TO ITS TEACHERS FOR RESEARCH\n\n3.1.3   NUMBER OF TEACHERS AWAREDED INTERNATIONAL FELLOWSHIP FOR ADVANCED STUDIES/RESEARCH DURING LAST 5 YEARS";

        }
        if (displaytext == "form2") {
            document.getElementById("area").value = "PREVIEW OF FORM 3.2";
        }
        if (displaytext == "form3") {
            document.getElementById("area").value = "PREVIEW OF FORM 3.3";
        }
        if (displaytext == "form4") {
            document.getElementById("area").value = "PREVIEW OF FORM 3.4";
        }
        if (displaytext == "form5") {
            document.getElementById("area").value = "PREVIEW OF FORM 3.5 \n\n3.5.2   REVENUE GENERATED FROM CONSULTANCY DURING LAST FIVE YEARS\n\n3.5.3   REVENUE GENERATED FROM CORPORATE TRAINING BY THE INSTITUTION DURING THE LAST 5 YEARS";
        }
        if (displaytext == "form6") {
            document.getElementById("area").value = "PREVIEW OF FORM 3.6 \n\n3.6.2   DETAILS REGARDING EXTENSION ACTIVITIES\n\n3.6.3   NUMBER OF EXTENSION AND OUTREACH PROGRAMS CONDUCTED   \n\n3.6.4   AVERAGE PERCENTAGE OF STUDENTS PARTICIPATING IN EXTENSION ACTIVITIES WITH GOVERNMENT/NON-GOVERNMENT ORGANISATIONS";
        }
        if (displaytext == "form7") {
            document.getElementById("area").value = "PREVIEW OF FORM 3.7 \n\n3.7.1   NUMBER OF COLLABORATIVE ACTIVITIES FOR  RESEARCH, FACULTY EXCHANGE, STUDENT EXCHANGE PER YEAR \n\n3.7.2   NUMBER OF LINKAGES WITH INSTITUTIONS/INDUSTRIES FOR INTERNSHIP, ON-THE-JOB TRAINING, PROJECT WORK, SHARING OF RESEARCH FACILITIES ETC. DURING THE LAST FIVE YEARS\n\n3.7.3NUMBER OF FUNCTIONAL MOUS WITH INSTITUTIONS OF NATIONAL, INTERNATIONAL IMPORTANCE, OTHER UNIVERSITIES, INDUSTRIES, CORPORATE HOUSES ETC. DURING THE LAST FIVE YEARS (ONLY FUNCTIONAL MOUS WITH ONGOING ACTIVITIES TO BE CONSIDERED) ";
        }
        if (displaytext == "0") {
            document.getElementById("area").value = "NO OPTION IS CHOSEN IN DROPDOWN";
        }
       
    }

   

    
</script>
<style>

    :root{
        --primary:#8a57e9;
        --secondary:#4c75e6;
         -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;

    }
    .cost{
        width:100%;
        height:100vh;
        justify-content:center;
        align-items:flex-start;
        padding:5rem;
    }
    .dropdown{
       width:950px;
       width:100%;
        position:relative;
        padding-left:10%;
        padding-right:10%;
    }

    .dropdown-select {
        padding: 0.5rem;
        border-radius: 4px;
        background-color: white;
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: space-between;
        font-size: 1rem;
        cursor: pointer;
        
    }

    .buttons {
    margin: 5%;
    text-align: center;
}

.wrap{
   padding-left:10%;
   padding-right:10%;
}
.wrappera{
    width:100%;
    background:#fff;
    border-radius:5px;
    padding:25px 25px 30px;
 
}
.wrappera h2{
    color:#4671EA;
    font-size:28px;
    text-align:center;
}
.wrappera textarea{
    width:100%;
    height:100%;
    padding:15px;
    border-radius:5px;
    outline:none;
    resize:none;
    font-size:16px;
    margin-top:20px;
    border-radius:5px;
    border-color:#bfbfbf;
}
textarea:is(:focus, :valid){
    border-color:#4671EA;
    padding:14px;
    border-width:2px;
}
textarea::-webkit-scrollbar{
    width:0px;
}
</style>

 
    <div class="cost">
        <div class="dropdown">
        <select id="pages" onchange="ddlselect() ; " class="dropdown-select">

    <option value="0">choose an option</option>
    <option  value="form1">3.1</option>
    <option  value="form2">3.2</option>
     <option  value="form3">3.3</option>
        <option  value="form4">3.4</option>
            <option  value="form5">3.5</option>
            <option  value="form6">3.6</option>
            <option  value="form7">3.7</option>

</select>
</div>

         <div class="buttons">
              <input class="btn btn-success mr-5 custom"  type="button" onclick="showPage()"  value="View Page"   style="font-size:20px; " />
</div>

<div class="wrap">
   <div class="wrappera">
       <h2>Description</h2>
       <textarea id="area" rows="10"required readonly>No option is choosed in dropdown  </textarea>
   </div>
    </div>

   
    


    </div>
 
 
        
   


   




</asp:Content>
