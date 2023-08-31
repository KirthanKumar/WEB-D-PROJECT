function productfilling(arr) {
    let imgmain = document.getElementById("imgmain");
    imgmain.innerHTML = '';
    let div = document.createElement("div");
    div.setAttribute("class", "single-pro-img");
    let img = document.createElement("img");
    img.setAttribute("src", arr.imgurl1);
    img.setAttribute("alt", "product");
    img.setAttribute("id", "product_img");
    div.append(img);

    let div2 = document.createElement("div");
    div2.setAttribute("class", "small-img-group")

    let div21 = document.createElement("div");
    div21.setAttribute("class", "small-img-column");
    let img21 = document.createElement("img");
    img21.setAttribute("src", arr.imgurl1);
    img21.setAttribute("alt", "product");
    img21.setAttribute("class", "small-img");
    div21.append(img21);

    let div22 = document.createElement("div");
    div22.setAttribute("class", "small-img-column");
    let img22 = document.createElement("img");
    img22.setAttribute("src", arr.imgurl2);
    img22.setAttribute("class", "small-img");
    img22.setAttribute("alt", "product");
    div22.append(img22);

    let div23 = document.createElement("div");
    div23.setAttribute("class", "small-img-column");
    let img23 = document.createElement("img");
    img23.setAttribute("src", arr.imgurl3);
    img23.setAttribute("class", "small-img");
    img23.setAttribute("alt", "product");
    div23.append(img23);

    let div24 = document.createElement("div");
    div24.setAttribute("class", "small-img-column");
    let img24 = document.createElement("img");
    img24.setAttribute("src", arr.imgurl4);
    img24.setAttribute("alt", "product");
    img24.setAttribute("class", "small-img");
    div24.append(img24);
    div2.append(div21);
    div2.append(div22);
    div2.append(div23);
    div2.append(div24);
    imgmain.append(div);
    imgmain.append(div2);

    let product = document.getElementById("descp");
    product.innerHTML = '';

    let div1 = document.createElement("div");
    div1.setAttribute("id", "pname");
    let h2 = document.createElement("h2");
    h2.innerHTML = arr.title;
    div1.append(h2);
    let div11 = document.createElement("div");
    div11.setAttribute("id", "price");
    div11.innerHTML = "₹" + arr.price;
    div1.append(div11);
    let div13 = document.createElement("div");
    div13.setAttribute("class", "borderbox");

    let p2 = document.createElement("p2");
    p2.innerHTML = "Key features";
    div13.append(p2);

    let u = document.createElement("ul");
    u.setAttribute("class", "p");
    let li1 = document.createElement("li");
    li1.innerHTML = arr.feature1;
    let li2 = document.createElement("li");
    li2.innerHTML = arr.feature2;
    let li3 = document.createElement("li");
    li3.innerHTML = arr.feature3;
    let li4 = document.createElement("li");
    li4.innerHTML = arr.feature4;
    u.appendChild(li1);
    u.appendChild(li2);
    u.appendChild(li3);
    u.appendChild(li4);
    div13.append(u);
    product.append(div1);
    product.append(div13);

    let div12 = document.createElement("div");
    div12.setAttribute("id", "buttons");
    let bt = document.createElement("a");
    let b = document.createElement("button");
    b.onclick = function () { idCollection(); };
    b.setAttribute("class", "bt");
    b.innerHTML = "ADD TO CART"
    bt.appendChild(b);
    let bt2 = document.createElement("a");
    //bt2.setAttribute("href", "#");
    let b2 = document.createElement("button");
    b2.onclick = function () {buy(arr.products_id);};
    b2.setAttribute("class", "bt");
    b2.innerHTML = "BUY NOW";
    bt2.appendChild(b2);
    div12.appendChild(bt);
    div12.appendChild(bt2);
    product.append(div12);

    var MainImg = document.getElementById("product_img");
    var smallimg = document.getElementsByClassName("small-img");
    smallimg[0].onclick = function () {
        MainImg.src = smallimg[0].src;
    }
    smallimg[1].onclick = function () {
        MainImg.src = smallimg[1].src;
    }
    smallimg[2].onclick = function () {
        MainImg.src = smallimg[2].src;
    }
    smallimg[3].onclick = function () {
        MainImg.src = smallimg[3].src;
    }
}
function buy(id){
    console.log(id);
    window.location.href = '/checkout.html?id='+id;
}
function idCollection() {
    const url = new URL(window.location.href);
    const id = url.searchParams.get("id");
    const username = localStorage.getItem("username");
    const email = localStorage.getItem("email");
    if (username === null) {
        console.log(username);
        alert("Please login first");
        window.location.href = 'login.html';
        return ;
    } else {
        $.post(baseURL+"addtocart",
            {
                username: username,
                email: email,
                id: id
            },
            function (data, status) {
                console.log(data);
                alert("your Item is added to cart");
            });
    }

}
const baseURL = "http://localhost/api/";// comment this line to use in localhost environment
// const baseURL = "http://localhost:3000/";//uncomment to use in localhost environment