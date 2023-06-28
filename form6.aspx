<%@ Page Title="FORM6" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="form6.aspx.cs" Inherits="website.form6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <script>

        function ddlselect() {
            var d = document.getElementById("cont");
            var displaytext = d.options[d.selectedIndex].value;

            if (displaytext == 0) {
                document.getElementById("sixtwo").style.display = "block";
                document.getElementById("sixthree").style.display = "block";
                document.getElementById("sixfour").style.display = "block";
                document.getElementById("t2").style.display = "none";
                document.getElementById("bt").style.display = "none";
            }
            if (displaytext == "form2") {              
                document.getElementById("21").removeAttribute("disabled");
                document.getElementById("22").disabled = false;
                document.getElementById("23").disabled = false;
                document.getElementById("24").disabled = false;
                document.getElementById("21b").disabled = false;
                //document.getElementById("22b").disabled = false;
                document.getElementById("23b").disabled = false;
                document.getElementById("sixtwo").style.borderStyle = "solid";
                document.getElementById("sixtwo").style.borderColor = "black";
                document.getElementById("sixthree").style.display = "none";
                document.getElementById("sixfour").style.display = "none";
                document.getElementById("sixtwo").style.display = "block";
                document.getElementById("t2").style.display = "block";
                document.getElementById("bt").style.display = "block";
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
                document.getElementById("sixtwo").style.borderStyle = "none";
                document.getElementById("sixtwo").style.borderColor = "none";
                document.getElementById("t2").style.display = "none";
                document.getElementById("bt").style.display = "none";

            }
            if (displaytext == "form3") {
                document.getElementById("31").disabled = false;
                document.getElementById("32").disabled = false;
                document.getElementById("33").disabled = false;
                document.getElementById("34").disabled = false;
                document.getElementById("35").disabled = false;
                document.getElementById("31b").disabled = false;
                document.getElementById("32b").disabled = false;
                document.getElementById("33b").disabled = false;
                document.getElementById("sixthree").style.borderStyle = "solid";
                document.getElementById("sixthree").style.borderColor = "black";
                document.getElementById("sixtwo").style.display = "none";
                document.getElementById("sixfour").style.display = "none";
                document.getElementById("sixthree").style.display = "block";
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
                document.getElementById("31b").setAttribute("disabled", true);
                document.getElementById("32b").setAttribute("disabled", true);
                document.getElementById("33b").setAttribute("disabled", true);
                document.getElementById("sixthree").style.borderStyle = "none";
                document.getElementById("sixthree").style.borderColor = "none";
            }
            if (displaytext == "form4") {
                document.getElementById("41").disabled = false;
                document.getElementById("42").disabled = false;
                document.getElementById("43").disabled = false;
                document.getElementById("44").disabled = false;
                document.getElementById("45").disabled = false;
                document.getElementById("46").disabled = false;
                document.getElementById("41b").disabled = false;
                document.getElementById("42b").disabled = false;
                document.getElementById("43b").disabled = false;
                document.getElementById("sixfour").style.borderStyle = "solid";
                document.getElementById("sixfour").style.borderColor = "black";
                document.getElementById("sixthree").style.display = "none";
                document.getElementById("sixtwo").style.display = "none";
                document.getElementById("sixfour").style.display = "block";
            }
            else {
                document.getElementById("41").setAttribute("disabled", true);
                document.getElementById("41").value = "";
                document.getElementById("42").setAttribute("disabled", true);
                document.getElementById("42").value = "";
                document.getElementById("43").setAttribute("disabled", true);
                document.getElementById("43").value = "";
                document.getElementById("44").setAttribute("disabled", true);
                document.getElementById("44").value = "";
                document.getElementById("45").setAttribute("disabled", true);
                document.getElementById("45").value = "";
                document.getElementById("46").setAttribute("disabled", true);
                document.getElementById("46").value = "";
                document.getElementById("41b").setAttribute("disabled", true);
                document.getElementById("42b").setAttribute("disabled", true);
                document.getElementById("43b").setAttribute("disabled", true);
                document.getElementById("sixfour").style.borderStyle = "none";
                document.getElementById("sixfour").style.borderColor = "none";
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
    width:100%;
}
input[type=text]:focus{
    border-color:rgb(153,0,255);
    box-shadow:0 0 8px 0 rgb(153,0,255);
}
      
    .cost{
        width:100%;
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



.custom {
    width: 200px !important;
}



.tt{
    padding-left:5px;
    padding-right:5px;
}

        </style>
    <div class="cost">
        <div class="dropdown">
        <select id="cont" onchange="ddlselect() ; " class="dropdown-select">

    <option value="0">show modules</option>
    <option  value="form2">3.6.2</option>
    <option  value="form3">3.6.3</option>
     <option  value="form4">3.6.4</option>
       

</select>
           <div class="col-md-6">
            
           </div>

       </div>
     
        <div class="sixtwo" id="sixtwo"  >
     <div class="tt">     <hr />  <div class="text-center" style="font-size:22px;color:rgb(255, 165, 0);font-weight:bold"><label class="def">DETAILS REGARDING  EXTENSION  ACTIVITIES </label> </div>
         <table style="width:100%">
             <tr>
                 <td style="width:60%"><label >Name of the activity</label></td>
                 <td> <input type="text"   size="12" disabled id="21"/></td>
            </tr>
             <tr>
                 <td> <p> <label >Name of the award/recognition</label></td>
                 <td> <input type="text"    size="12" disabled id="22"/></td>
             </tr>
             <tr>
                 <td> <p> <label >Name of the awarding government/recognised bodies</label></td>
                 <td> <input type="text"   size="12" disabled id="23"/></td>
             </tr>
             <tr>
                 <td> <p> <label >Year of award</label></td>
                 <td> <input type="text"   size="12" disabled id="24"/> </td>
             </tr>
         </table>
           
             <div class="buttons" id="bt" style="display:none">

        <input  class="btn btn-success mr-5 custom" id="21b" type="button" value="Save" disabled  style="font-size:20px; " />
 
        <input class="btn btn-warning mr-5 custom" id="22b" type="button" value="Update"   disabled    style="font-size:20px; " />
      
        <input class="btn btn-primary custom" id="23b" type="button" value="Clear"  disabled    style="font-size:20px; " />
                 

    
</div>



        

         <div style="padding-top:7px;display:none "id="t2" >
                 <table class="table table-bordered">
    <thead>
      <tr>
        <th>Activity</th>
          <th>Award</th>
        <th>Recognising body</th>
        <th>Year</th><th>Status</th>
          <th>Options</th>
          
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
          <td>555/66/22</td>
          <td>Not Approved</td>
          <td><a href="#">edit/</a><a href="#">delete</a></td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
          <td>88/77</td>
          <td>Not Approved</td>
           <td><a href="#">edit/</a><a href="#">delete</a></td>
      </tr>
    </tbody>
  </table>
</div>




    </div>
          


        </div>

  
        <div class="sixthree" id="sixthree">
    <div class="tt">           <hr />     <div class="text-center" style="font-size:22px;color:rgb(255, 165, 0);font-weight:bold"><label>NUMBER OF EXTENSION AND OUTREACH PROGRAMS CONDUCTED</label></div>
           <p> <label >Name of the activity</label>
            <input type="text"   size="12"  disabled id="31"/></p>
              <p> <label >Organising unit/agency/collaborating agency</label>
            <input type="text"   size="12" disabled id="32"/></p>
             <p> <label >Year of activity</label>
            <input type="text"   size="12" disabled id="33" /></p>
             <p> <label >Number of teachers participated in such activities</label>
            <input type="text"   size="12"  disabled id="34" /></p>
            <p> <label >Number of students participated in such activities</label>
            <input type="text" "   size="12"  disabled id="35" /></p>
          <div class="buttons">
        <input class="SubmitButton btn-hover color-1" type="button" value="Save"  id="31b" disabled    style="font-size:20px; " />
 
        <input class="SubmitButton btn-hover color-2" type="button" value="Update"  id="32b" disabled   style="font-size:20px; " />
      
        <input class="SubmitButton btn-hover color-10" type="button" value="Delete" disabled   id="33b"  style="font-size:20px; " />


    
</div>
    </div>


        </div>


 
        <div class="sixfour" id="sixfour">
       <div class="tt">        <hr />       <div class="text-center" style="font-size:22px;color:rgb(255, 165, 0);font-weight:bold"><label>AVERAGE PERCENTAGE OF STUDENTS PARTICIPATING IN EXTENSION ACTIVITIES WITH GOVERNMENT/NON-GOVERNMENT ORGANISATIONS</label></div>
           <p> <label >Name of the activity</label>
            <input type="text"  size="12" disabled id="41" /></p>
              <p> <label >Organising unit/agency/collaborating agency</label>
            <input type="text"  size="12"  disabled id="42"/></p>
             <p> <label >Name of the scheme</label>
            <input type="text"   size="12" disabled id="43" /></p>
             <p> <label >Year of award</label>
            <input type="text"    size="12" disabled id="44" /></p>
           <p> <label >Number of teachers participated in such activities</label>
            <input type="text"    size="12" disabled id="45" /></p>
            <p> <label >Number of students participated in such activities</label>
            <input type="text"    size="12" disabled id="46" /></p>
          <div class="buttons">
        <input class="SubmitButton btn-hover color-1" type="button" disabled id="41b" value="Save"   style="font-size:20px; " />
 
        <input class="SubmitButton btn-hover color-2" type="button" disabled id="42b" value="Update" style="font-size:20px; " />
      
        <input class="SubmitButton btn-hover color-10" type="button" disabled  id="43b" value="Delete"  style="font-size:20px; " />


    </div>

    </div>


        </div>



    </div>
   
</asp:Content>
 