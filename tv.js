const dd=[
    {
    "img":"https://m.media-amazon.com/images/I/41GTMteNtdL._SX300_SY300_QL70_FMwebp_.jpg",
    "description":"MI 100 cm (40 inches) 5A Series Full HD Smart Android LED TV with 24W Dolby Audio & Metal Bezel-Less Frame (Black) (2022 Model)\n\n₹24,999",
    "price":24999},
    {
        "img":"https://m.media-amazon.com/images/I/41ydsm+ycKL._SY300_SX300_.jpg",
        "description":"Foxsky 127 cm (50 inches) 4K Ultra HD Smart LED TV 50FS-VS (Black)\n\n₹19,999",
        "price":19999
    },
    {
        "img":"https://m.media-amazon.com/images/I/819SRH2DKBL._AC_UY218_.jpg",
        "description":"OnePlus 108 cm (43 inches) Y Series 4K Ultra HD Smart Android LED TV 43Y1S Pro (Black)\n\n₹29,999",
        "price":29999
    },
    {
        "img":"https://m.media-amazon.com/images/I/91v4nFq0LuL._AC_UL320_.jpg",
        "description":"Sony Bravia 108 cm (43 inches) Full HD Smart LED TV 43W6600 (Black) (2020 Model)\n\n₹45,999",
        "price":45999
    }   
    ]
function js3Function(value){
if (value == "htl") {
    dd.sort((a, b) => parseFloat(a.price) - parseFloat(b.price));
} else {
    dd.sort((a, b) => {
        return b.price - a.price;
    });
}
    let list = document.getElementById("ulList");
    list.innerHTML = ''
    dd.forEach((item) => {
        let li = document.createElement("li");
        let div = document.createElement("div");
        div.setAttribute("class", "img");
        let img = document.createElement("img");
        img.setAttribute("src", item.img);
        img.setAttribute("alt", "product");
        img.setAttribute("width", "200");
        img.setAttribute("height", "200");
        div.appendChild(img);
        li.append(div)
        let desc = document.createElement("a");
        desc.setAttribute("class", "description");
        desc.setAttribute("href", "#");
        desc.innerText = item.description;
        li.append(desc);
        list.appendChild(li);
    })
}
function sortByPrice3(value){
    let product=[];
    if (value=="00") {
        for (let { img, description,price } of dd) {
            if (price<20000) {
                product.push({ img, description, price});
            } 
        }
    } else if (value=="20") {
        for (let { img, description,price } of dd) {
            if (price>20000 && price<45000) {
                product.push({ img, description, price});
            } 
        }
    } else if (value=="45"){
        for (let { img, description,price } of dd) {
            if (price>45000) {
                product.push({ img, description, price});
            } 
        }
    }else{
        js3Function(value);
        return;
    }
    let list = document.getElementById("ulList");
    list.innerHTML = ''
    product.forEach((item) => {
        let li = document.createElement("li");
        let div = document.createElement("div");
        div.setAttribute("class", "img");
        let img = document.createElement("img");
        img.setAttribute("src", item.img);
        img.setAttribute("alt", "product");
        img.setAttribute("width", "200");
        img.setAttribute("height", "200");
        div.appendChild(img);
        li.append(div)
        let desc = document.createElement("a");
        desc.setAttribute("class", "description");
        desc.setAttribute("href", "#");
        desc.innerText = item.description;
        li.append(desc);
        list.appendChild(li);
    })
}