<%@ Page Title="FORM1" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="form1.aspx.cs" Inherits="website.form1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    

      <script>

        function ddlselect() {
            var d = document.getElementById("cont");
            var displaytext = d.options[d.selectedIndex].value;

            if (displaytext == 0) {
                document.getElementById("onetwo").style.display = "block";
                document.getElementById("onethree").style.display = "block";
            }
            if (displaytext == "form2") {              
                document.getElementById("21").removeAttribute("disabled");
                document.getElementById("22").disabled = false;
                document.getElementById("23").disabled = false;
                document.getElementById("24").disabled = false;
                document.getElementById("21b").disabled = false;
                document.getElementById("22b").disabled = false;
                document.getElementById("23b").disabled = false;
                document.getElementById("onetwo").style.borderStyle = "solid";
                document.getElementById("onetwo").style.borderColor = "black";
                document.getElementById("onethree").style.display = "none";
                document.getElementById("onetwo").style.display = "block";
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
                document.getElementById("21b").setAttribute("disabled", true);
                document.getElementById("22b").setAttribute("disabled", true);
                document.getElementById("23b").setAttribute("disabled", true);
                document.getElementById("onetwo").style.borderStyle = "none";
                document.getElementById("onetwo").style.borderColor = "none";

            }
            if (displaytext == "form3") {
                document.getElementById("31").disabled = false;
                document.getElementById("32").disabled = false;
                document.getElementById("33").disabled = false;
                document.getElementById("34").disabled = false;
                document.getElementById("31b").disabled = false;
                document.getElementById("32b").disabled = false;
                document.getElementById("33b").disabled = false;
                document.getElementById("onethree").style.borderStyle = "solid";
                document.getElementById("onethree").style.borderColor = "black";
                document.getElementById("onetwo").style.display = "none";
                document.getElementById("onethree").style.display = "block";
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
                document.getElementById("31b").setAttribute("disabled", true);
                document.getElementById("32b").setAttribute("disabled", true);
                document.getElementById("33b").setAttribute("disabled", true);
                document.getElementById("onethree").style.borderStyle = "none";
                document.getElementById("onethree").style.borderColor = "none";
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
    <option  value="form2">3.1.2</option>
    <option  value="form3">3.1.3</option>
       

</select>
           <div class="col-md-6">
            
           </div>

       </div>
     
        <div class="onetwo" id="onetwo"  >
     <div class="tt">     <hr />  <div class="text-center" style="font-size:22px;color:rgb(255, 165, 0);font-weight:bold"><label class="def">INSTITUTION PROVIDES SEED MONEY TO ITS TEACHERS FOR RESEARCH</label></div>
           <p> <label >Name of the teacher getting seed money</label>
            <input type="text"   size="12" disabled id="21"/></p>
              <p> <label >The amount of seed money</label>
            <input type="text"    size="12" disabled id="22"/></p>
             <p> <label >Year of receiving grant</label>
            <input type="text"   size="12" disabled id="23"/></p>
             <p> <label >Dureation of the grant</label>
            <input type="text"    size="12" disabled id="24"/></p>
             <div class="buttons">
        <input class="SubmitButton btn-hover color-1" id="21b" type="button" value="Save" disabled  style="font-size:20px; " />
 
        <input class="SubmitButton btn-hover color-2" id="22b" type="button" value="Update"   disabled    style="font-size:20px; " />
      
        <input class="SubmitButton btn-hover color-10" id="23b" type="button" value="Delete"  disabled    style="font-size:20px; " />


    
</div>
    </div>
          


        </div>

       <div class="onethree" id="onethree"  >
     <div class="tt">     <hr />  <div class="text-center" style="font-size:22px;color:rgb(255, 165, 0);font-weight:bold"><label class="def">NUMBER OF TEACHERS AWAREDED INTERNATIONAL FELLOWSHIP FOR ADVANCED STUDIES/RESEARCH DURING LAST 5 YEARS</label></div>
           <p> <label >Name of the teacher awarded international fellowship</label>
            <input type="text"   size="12" disabled id="31"/></p>
              <p> <label >Name of the award</label>
            <input type="text"    size="12" disabled id="32"/></p>
             <p> <label >Year of the award</label>
            <input type="text"   size="12" disabled id="33"/></p>
             <p> <label >Awarding agency</label>
            <input type="text"    size="12" disabled id="34"/></p>
             <div class="buttons">
        <input class="SubmitButton btn-hover color-1" id="31b" type="button" value="Save" disabled  style="font-size:20px; " />
 
        <input class="SubmitButton btn-hover color-2" id="32b" type="button" value="Update"   disabled    style="font-size:20px; " />
      
        <input class="SubmitButton btn-hover color-10" id="33b" type="button" value="Delete"  disabled    style="font-size:20px; " />


    
</div>
    </div>
          


        </div>

  



    </div>


</asp:Content>
