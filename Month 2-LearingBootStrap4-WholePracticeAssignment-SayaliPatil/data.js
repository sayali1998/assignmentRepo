'use strict';

var itemId =  localStorage.getItem('IdNew') ? JSON.parse(localStorage.getItem('IdNew')) : [];  
            function addCart(clicked_id){    
                var currentDate = new Date();   
                currentDate.setDate(currentDate.getDate() + 3);
                if (typeof(Storage) !== "undefined") {    
                    itemId.push(clicked_id); 
                    localStorage.setItem("IdNew", JSON.stringify(itemId)); 
                    alert("Item Added to the cart");
                    console.log(JSON.parse(localStorage.getItem("IdNew")) )               
                    var ele= document.getElementById(clicked_id);
                    ele.value="Add one more to cart";

                } else {  
                    alert("Local Storage not supported")
                }
                
            }
            function getAll(){
                var getId=[];
                getId = JSON.parse(localStorage.getItem("IdNew")); 
                console.log(JSON.parse(localStorage.getItem("IdNew")));   
                
                for (var i = 0; i <= getId.length-1; i++)    
                {       
                    // var key = localStorage.key(i);
                    // console.log(key);    
                    var val;
                    val = getId[i];
                    console.log(val);  
                    var img = document.createElement('img');
                    var lab = document.createElement('label');
                    console.log(getId[i]);
                    img.setAttribute('src',val)
                    img.setAttribute('width',"300");
                    img.setAttribute('height',"450");
                    img.setAttribute('padding',"10");
                    document.getElementById('image').appendChild(img);
                 } 
            }