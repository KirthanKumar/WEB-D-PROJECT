let arr={
        "imgurl1": "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1666096848/Croma%20Assets/Computers%20Peripherals/Laptop/Images/263843_lyw43f.png/mxw_2256,f_auto",
        "imgurl2":"https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1666096848/Croma%20Assets/Computers%20Peripherals/Laptop/Images/263843_lyw43f.png/mxw_2256,f_auto",
        "imgurl3":"https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1668663643/Croma%20Assets/Computers%20Peripherals/Laptop/Images/262842_2_s8fnov.png/mxw_2256,f_auto",
        "imgurl4":"https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1668663647/Croma%20Assets/Computers%20Peripherals/Laptop/Images/262842_3_sadei3.png/mxw_2256,f_auto",
        "imgurl5":"https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1668663640/Croma%20Assets/Computers%20Peripherals/Laptop/Images/262842_1_rpu5fd.png/mxw_2256,f_auto",
        "heading":"Acer Aspire 3 Intel Core i3 11th Gen (15.6 inch, 8GB, 512GB, Windows 11 Home, MS Office 2021, Intel UHD, Full HD LED-Backlit Display, Silver, NX.ADDSI.011) ",
        price:"₹ 20,000",
        features1: "Display: 39.62 cms (15.6 inches), FHD LED-Backlit",
        features2:"Memory: 8GB DDR4, 512GB SSD ROM",
        features3:"Processor: Intel Core i3 11th Generation",
        features4:"Graphics: Intel UHD\nIncluded Software: MS Office 2021"
    }
    
function productfilling(){
    let imgmain = document.getElementById("imgmain");
    imgmain.innerHTML = '';

    let div = document.createElement("div");
    div.setAttribute("class", "single-pro-img");
    let img = document.createElement("img");
    img.setAttribute("src",arr.imgurl1);
    img.setAttribute("alt", "product");
    img.setAttribute("id", "product_img");
    div.append(img);

    let div2 = document.createElement("div");
    div2.setAttribute("class", "small-img-group")

    let div21 = document.createElement("div");
    div21.setAttribute("class", "small-img-column");
    let img21 = document.createElement("img");
    img21.setAttribute("src", arr.imgurl2);
    img21.setAttribute("alt", "product");
    img21.setAttribute("class", "small-img");
    div21.append(img21);
    
    let div22 = document.createElement("div");
    div22.setAttribute("class", "small-img-column");
    let img22 = document.createElement("img");
    img22.setAttribute("src", arr.imgurl3);
    img22.setAttribute("class", "small-img");
    img22.setAttribute("alt", "product");
    div22.append(img22);
    
    let div23 = document.createElement("div");
    div23.setAttribute("class", "small-img-column");
    let img23 = document.createElement("img");
    img23.setAttribute("src", arr.imgurl4);// img url key to added in place imgurl
    img23.setAttribute("class", "small-img");
    img23.setAttribute("alt", "product");
    div23.append(img23);
    
    let div24 = document.createElement("div");
    div24.setAttribute("class", "small-img-column");
    let img24 = document.createElement("img");
    img24.setAttribute("src", arr.imgurl5);
    img24.setAttribute("alt", "product");
    img24.setAttribute("class", "small-img");
    div24.append(img24);
    div2.append(div21);
    div2.append(div22);
    div2.append(div23);
    div2.append(div24);
    imgmain.append(div);
    imgmain.append(div2);

    let product=document.getElementById("descp");
    product.innerHTML='';

    let div1=document.createElement("div");
    div1.setAttribute("id", "pname");
    let h2=document.createElement("h2");
    h2.innerHTML=arr.heading;
    div1.append(h2);
    let div11=document.createElement("div");
    div11.setAttribute("id", "price");
    div11.innerHTML=arr.price;
    div1.append(div11);
    let div13=document.createElement("div");
    div13.setAttribute("class", "borderbox");

    let p2=document.createElement("p2");
    p2.innerHTML="Key features";
    div13.append(p2);

    let u=document.createElement("ul");
    u.setAttribute("class", "p");
    let li1=document.createElement("li");
    li1.innerHTML=arr.features1;
    let li2=document.createElement("li");
    li2.innerHTML=arr.features2;
    let li3=document.createElement("li");
    li3.innerHTML=arr.features3;
    let li4=document.createElement("li");
    li4.innerHTML=arr.features4;
    u.appendChild(li1);
    u.appendChild(li2);
    u.appendChild(li3);
    u.appendChild(li4);
    div13.append(u);
    product.append(div1);
    product.append(div13);

    let div12=document.createElement("div");
    div12.setAttribute("id", "buttons");
    let bt=document.createElement("a");
    bt.setAttribute("href","#");
    let b=document.createElement("button");
    b.setAttribute("class","bt");
    b.innerHTML="ADD TO CART"
    bt.appendChild(b);
    let bt2=document.createElement("a");
    bt2.setAttribute("href","#");
    let b2=document.createElement("button");
    b2.setAttribute("class","bt");
    b2.innerHTML = "BUY NOW";
    bt2.appendChild(b2);
    div12.appendChild(bt);
    div12.appendChild(bt2);
    product.append(div12);

    var MainImg = document.getElementById("product_img");
    var smallimg = document.getElementsByClassName("small-img");
    smallimg[0].onclick = function(){
        MainImg.src = smallimg[0].src;
    }
    smallimg[1].onclick = function(){
        MainImg.src = smallimg[1].src;
    }
    smallimg[2].onclick = function(){
        MainImg.src = smallimg[2].src;
    }
    smallimg[3].onclick = function(){
        MainImg.src = smallimg[3].src;
    }
}   