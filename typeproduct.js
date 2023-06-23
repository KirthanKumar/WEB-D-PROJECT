function productFill(Ptype){
    let list = document.getElementById("ulList");
    list.innerHTML = '';
    Ptype.forEach((item) => {
        let li = document.createElement("li");
        let div = document.createElement("div");
        div.setAttribute("class", "img");
        let img = document.createElement("img");
        img.setAttribute("src", item.imgurl1);
        img.setAttribute("alt", "product");
        img.setAttribute("width", "200");
        img.setAttribute("height", "200");
        div.appendChild(img);
        li.append(div)
        let desc = document.createElement("a");
        desc.setAttribute("class", "description");
        desc.setAttribute("href", "product_page.html?id="+item.products_id);
        desc.innerText = item.title;
        li.append(desc);
        let price= document.createElement("div");
        price.setAttribute("class", "price");
        price.innerHTML="₹"+item.price;
        li.append(price);
        list.appendChild(li);
    })
}
function orderBy(value){
    let items=Ptype;
    let set= document.getElementById("pr");
    if (value == "htl") {
        set.value = "al";
        items.sort((a, b) => parseFloat(a.price) - parseFloat(b.price));
    } else if(value =='lth') {
        set.value = "al";
        items.sort((a, b) => {
            return b.price - a.price;
        });
    }
    productFill(items);
}
function sortByPrice(value){
    let set=document.getElementById('sort');
    set.value = 'none';
    let product=[];
    if (value=="00") {
        for (let { products_id,imgurl1, title,price } of Ptype) {
            if (price<20000) {
                product.push({ products_id,imgurl1, title, price});
            } 
        }
    } else if (value=="20") {
        for (let { products_id,imgurl1, title,price } of Ptype) {
            if (price>=20000 && price<45000) {
                product.push({products_id,imgurl1, title, price});
            } 
        }
    } else if (value=="45"){
        for (let { products_id,imgurl1, title,price } of Ptype) {
            if (price>=45000) {
                product.push({products_id,imgurl1, title, price});
            } 
        }
    }else{
        window.location.reload();
        return;
    }productFill(product);
}
