const d = [
    {
        "img": "https://rukminim1.flixcart.com/image/416/416/l4hcx3k0/computer/y/j/z/macbook-air-thin-and-light-laptop-apple-original-imagfdeqter4sj2j.jpeg?q=70",
        "description": "APPLE 2022 MacBook AIR M2 - (8 GB/256 GB SSD/Mac OS Monterey) MLY33HN/A  (13.6 Inch, Midnight, 1.24 Kg)\n\n₹50,000",
        "price": 50000
    },
    {
        "img": "https://www.lenovo.com/medias/ThinkBook-14-Gen-2-Intel-4.jpg?context=bWFzdGVyfGltYWdlc3w2MDEwNHxpbWFnZS9qcGVnfGltYWdlcy9oMzEvaGIwLzEzMDMzMjMwMzY4Nzk4LmpwZ3wwMzkwMTRlMDU5ZmU3MjkyMzgyM2FiNTgzYjhlYzUxN2JiMjAwYmRlNDUxNjA4OWY0ZjAzNDVlY2JkNGJiOWE0",
        "description": "LENOVA ThinkBook 14 Gen 2 (Intel)\n\n₹19,000",
        "price": 19000
    },
    {
        "img": "https://rukminim1.flixcart.com/image/416/416/kulk9zk0/computer/f/t/w/15-ec2075ax-gaming-laptop-hp-original-imag7nyzhxqc7xhh.jpeg?q=70",

        "description": "HP Pavilion Gaming Ryzen 7 Octa Core AMD R7-5800H - (16 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce RTX 3050/144 Hz) 15-EC2146AX Gaming Laptop  (15.6 inch, Shadow Black & Ultra Violet, 1.98 kg)\n\n₹44,000",
        "price": 44000
    },
    {
        "img": "https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/notebooks/xps-notebooks/xps-17-9720/media-gallery/notebook-xps-17-9720-silver-gallery-4.psd?fmt=png-alpha&pscan=auto&scl=1&wid=3484&hei=2054&qlt=100,0&resMode=sharp2&size=3484,2054",
        "description": "DELL XPS 17\n\n₹3,00,000",
        "price": 300000
    },
    {
        "img": "https://m.media-amazon.com/images/I/81tkpxBTz5L._SY450_.jpg",
        "description": "Honor MagicBook 14, AMD Ryzen 5 5500U 14-inch (35.56 cm) FHD IPS Anti-Glare Thin and Light Laptop (16GB/512GB PCIe SSD/Windows 11/Fingerprint Login/Metal Body/Backlit KB/1.38Kg), Gray, NobelM-WFQ9AHNE\n\n₹45,000",
        "price": 45000
    }
]
function js2Function(value) {
    if (value == "htl") {
        d.sort((a, b) => parseFloat(a.price) - parseFloat(b.price));
    } else {
        d.sort((a, b) => {
            return b.price - a.price;
        });
    }

    let list = document.getElementById("ulList");
    list.innerHTML = ''
    d.forEach((item) => {
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
        desc.setAttribute("href", "product_page.html?id=" + item.description);
        desc.innerText = item.description;
        li.append(desc);
        list.appendChild(li);
    })

}
function sortByPrice2(value){
    let product=[];
    if (value=="00") {
        for (let { img, description,price } of d) {
            if (price<20000) {
                product.push({ img, description, price});
            } 
        }
    } else if (value=="20") {
        for (let { img, description,price } of d) {
            if (price>20000 && price<45000) {
                product.push({ img, description, price});
            } 
        }
    } else if (value=="45"){
        for (let { img, description,price } of d) {
            if (price>45000) {
                product.push({ img, description, price});
            } 
        }
    }else{
        js2Function(value);
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
        desc.setAttribute("href", "product_page.html?id=" + item.description);
        desc.innerText = item.description;
        li.append(desc);
        list.appendChild(li);
    })
}