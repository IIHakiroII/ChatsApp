const form = document.querySelector(".signup form");
continueBtn = form.querySelector(".button input");

form.onsubmit = (e)=>{
  e.preventDefault(); //preventing form from submitting
}
continueBtn.onclick = ()=>{
  //start Ajax
  let xhr = new XMLHttpRequest(); //creating XML object
  xhr.open("POST", "php/sigun.php", true);
  xhr.onload = ()=>{
    
  }
}