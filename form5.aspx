<%@ Page Title="FORM5" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="form5.aspx.cs" Inherits="website.form5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
    
     
    <script>

        function ddlselect() {
            var d = document.getElementById("cont");
            var displaytext = d.options[d.selectedIndex].value;

            if (displaytext == 0) {
                document.getElementById("fivetwo").style.display = "block";
                document.getElementById("fivethree").style.display = "block";
            }
            if (displaytext == "form2") {              
                document.getElementById("21").removeAttribute("disabled");
                document.getElementById("22").disabled = false;
                document.getElementById("23").disabled = false;
                document.getElementById("24").disabled = false;
                document.getElementById("25").disabled = false;
                document.getElementById("21b").disabled = false;
                document.getElementById("22b").disabled = false;
                document.getElementById("23b").disabled = false;
                document.getElementById("fivetwo").style.borderStyle = "solid";
                document.getElementById("fivetwo").style.borderColor = "black";
                document.getElementById("fivethree").style.display = "none";
                document.getElementById("fivetwo").style.display = "block";
            }
            else {
                document.getElementById("21").setAttribute("disabled", true);
                document.getElementById("21").value = "";
                document.getElementById("22").setAttribute("disabled", true);
                document.getElementById("22").value = "";
                document.getElementById("23").setAttribute("disabled", true);
                document.getElementById("23").value = "";
                document.getElementById("24").setAttribute("disabled", true);
                document.getElementById("24").value = "";
                document.getElementById("25").setAttribute("disabled", true);
                document.getElementById("25").value = "";
                document.getElementById("21b").setAttribute("disabled", true);
                document.getElementById("22b").setAttribute("disabled", true);
                document.getElementById("23b").setAttribute("disabled", true);
                document.getElementById("fivetwo").style.borderStyle = "none";
                document.getElementById("fivetwo").style.borderColor = "none";

            }
            if (displaytext == "form3") {
                document.getElementById("31").disabled = false;
                document.getElementById("32").disabled = false;
                document.getElementById("33").disabled = false;
                document.getElementById("34").disabled = false;
                document.getElementById("35").disabled = false;
                document.getElementById("36").disabled = false;
                document.getElementById("31b").disabled = false;
                document.getElementById("32b").disabled = false;
                document.getElementById("33b").disabled = false;
                document.getElementById("fivethree").style.borderStyle = "solid";
                document.getElementById("fivethree").style.borderColor = "black";
                document.getElementById("fivetwo").style.display = "none";
                document.getElementById("fivethree").style.display = "block";
            }
            else {
                document.getElementById("31").setAttribute("disabled", true);
                document.getElementById("31").value = "";
                document.getElementById("32").setAttribute("disabled", true);
                document.getElementById("32").value = "";
                document.getElementById("33").setAttribute("disabled", true);
                document.getElementById("33").value = "";
                document.getElementById("34").setAttribute("disabled", true);
                document.getElementById("34").value = "";
                document.getElementById("35").setAttribute("disabled", true);
                document.getElementById("35").value = "";
                document.getElementById("36").setAttribute("disabled", true);
                document.getElementById("36").value = "";
                document.getElementById("31b").setAttribute("disabled", true);
                document.getElementById("32b").setAttribute("disabled", true);
                document.getElementById("33b").setAttribute("disabled", true);
                document.getElementById("fivethree").style.borderStyle = "none";
                document.getElementById("fivethree").style.borderColor = "none";
            }
        }

    </script>


     <style>
input[type=text]{
    border:2px solid #aaa;
    border-radius:4px;
    margin:8px 0;
    outline:none;
    padding:8px;
    box-sizing:border-box;
    transition:.3s;
}
input[type=text]:focus{
    border-color:rgb(153,0,255);
    box-shadow:0 0 8px 0 rgb(153,0,255);
}
      
    .cost{
        width:100%;
        //height:100vh;
        justify-content:center;
        align-items:flex-start;
        padding:5rem;
    }
    .dropdown{
        width:100%;
        position:relative;
        padding-left:10%;
        padding-right:10%;
        padding-bottom:10%;
        font-size:10px;
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

.btn-hover {
    width: 200px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 20px;
    height: 55px;
    text-align:center;
    border: none;
    background-size: 300% 100%;
    border-radius: 50px;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:hover {
    background-position: 100% 0;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:focus {
    outline: none;
}
.btn-hover.color-1 {
    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
}
.btn-hover.color-2 {
    background-image: linear-gradient(to right, #f5ce62, #e43603, #fa7199, #e85a19);
    box-shadow: 0 4px 15px 0 rgba(229, 66, 10, 0.75);
}
.btn-hover.color-10 {
        background-image: linear-gradient(to right, #ed6ea0, #ec8c69, #f7186a , #FBB03B);
    box-shadow: 0 4px 15px 0 rgba(236, 116, 149, 0.75);
}








p label {
display: inline-block;
width: 40%;
font-size:18px;
}
p input {
width: 100%;
font-size: 16px;
}

.tt{
    padding-left:5px;
    padding-right:5px;
}

        </style>

     <div class="cost">
        <div class="dropdown">
        <select id="cont" onchange="ddlselect() ; " class="dropdown-select">

    <option value="0">choose an option</option>
    <option  value="form2">3.5.2</option>
    <option  value="form3">3.5.3</option>
       

</select>
           <div class="col-md-6">
            
           </div>

       </div>
     
        <div class="fivetwo" id="fivetwo"  >
     <div class="tt">     <hr />  <div class="text-center" style="font-size:22px;color:rgb(255, 165, 0);font-weight:bold"><label class="def">REVENUE GENERATED FROM CONSULTANCY DURING LAST FIVE YEARS</label></div>
           <p> <label >Name of the consultant</label>
            <input type="text"   size="12" disabled id="21"/></p>
              <p> <label >Name of the consultancy project</label>
            <input type="text"    size="12" disabled id="22"/></p>
             <p> <label >Consultancy/Sponsoring agency with contact details</label>
            <input type="text"   size="12" disabled id="23"/></p>
             <p> <label >Year</label>
            <input type="text"    size="12" disabled id="24"/></p>
            <p> <label >Revenue generatedr</label>
            <input type="text"    size="12" disabled id="25"/></p>
             <div class="buttons">
        <input class="SubmitButton btn-hover color-1" id="21b" type="button" value="Save" disabled  style="font-size:20px; " />
 
        <input class="SubmitButton btn-hover color-2" id="22b" type="button" value="Update"   disabled    style="font-size:20px; " />
      
        <input class="SubmitButton btn-hover color-10" id="23b" type="button" value="Delete"  disabled    style="font-size:20px; " />


    
</div>
    </div>
          


        </div>

       <div class="fivethree" id="fivethree"  >
     <div class="tt">     <hr />  <div class="text-center" style="font-size:22px;color:rgb(255, 165, 0);font-weight:bold"><label class="def">REVENUE GENERATED FROM CORPORATE TRAINING BY THE INSTITUTION DURING THE LAST 5 YEARS</label></div>
           <p> <label >Name of the teacher-consultants</label>
            <input type="text"   size="12" disabled id="31"/></p>
              <p> <label >Title of the corporate trainning program</label>
            <input type="text"    size="12" disabled id="32"/></p>
             <p> <label >Agency seeking trainning with contact details</label>
            <input type="text"   size="12" disabled id="33"/></p>
             <p> <label >Year</label>
            <input type="text"    size="12" disabled id="34"/></p>
            <p> <label >Revenue generated</label>
            <input type="text"    size="12" disabled id="35"/></p>
         <p> <label >Number ogf trainees</label>
            <input type="text"    size="12" disabled id="36"/></p>
             <div class="buttons">
        <input class="SubmitButton btn-hover color-1" id="31b" type="button" value="Save" disabled  style="font-size:20px; " />
 
        <input class="SubmitButton btn-hover color-2" id="32b" type="button" value="Update"   disabled    style="font-size:20px; " />
      
        <input class="SubmitButton btn-hover color-10" id="33b" type="button" value="Delete"  disabled    style="font-size:20px; " />


    
</div>
    </div>
          


        </div>

  



    </div>

</asp:Content>
