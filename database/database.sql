DROP DATABASE IF EXISTS food_ordering_db;
CREATE DATABASE food_ordering_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE food_ordering_db;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    role ENUM('customer','admin') DEFAULT 'customer'
);



CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);


CREATE TABLE menu (
    menu_id INT AUTO_INCREMENT PRIMARY KEY,
    food_name VARCHAR(100) NOT NULL,
    description TEXT,
    ingredients TEXT,
    nutrition_info VARCHAR(255),
    price DECIMAL(10,2) NOT NULL,
    image VARCHAR(500),
    rating DECIMAL(2,1),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);


CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_price DECIMAL(10,2),
    status VARCHAR(30) DEFAULT 'Pending',
    FOREIGN KEY (user_id) REFERENCES users(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    menu_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (menu_id) REFERENCES menu(menu_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


INSERT INTO users (user_id, username, email, password, phone_number, role) VALUES
(1, 'admin', 'admin@gmail.com', 'admin123', '0123456789', 'admin'),
(2, 'testuser', 'test@gmail.com', 'test123', '0111111111', 'customer');


INSERT INTO categories (category_id, category_name) VALUES
(1, 'Starters & Salads'),
(2, 'Pasta & Risotto'),
(3, 'Main Courses'),
(4, 'Wood-Fired Pizza'),
(5, 'Desserts'),
(6, 'Drinks');

INSERT INTO menu (menu_id, food_name, description, ingredients, nutrition_info, price, image, rating, category_id) VALUES
(1, 'Caesar Salad', 'Crisp romaine tossed in a classic creamy dressing with shaved parmesan and crunchy croutons.', 'Romaine lettuce, croutons, parmesan', 'Not specified', 28.00, 'https://i.pinimg.com/1200x/56/c2/d5/56c2d5122d292e50d3c1982aa34c26a0.jpg', 4.7, 1),
(2, 'Rocket Salad', 'Peppery wild rocket leaves tossed with fresh tomatoes and a tangy balsamic reduction.', 'Arugula (rocket), cherry tomatoes, balsamic', 'Not specified', 28.00, 'https://i.pinimg.com/736x/d9/c3/20/d9c320004008291d20e7577f6ff9fb34.jpg', 4.7, 1),
(3, 'Salmon Salad', 'Delicate ribbons of oak-smoked salmon laid over fresh garden greens with a zesty citrus dressing.', 'Smoked salmon, mixed greens, capers', 'Not specified', 34.00, 'https://i.pinimg.com/1200x/33/36/0b/33360bac37894f9bf896cfa71423cebd.jpg', 4.7, 1),
(4, 'Beetroot & Pear Salad', 'A sweet and earthy blend of tender beetroot and crisp pear slices, topped with creamy goat cheese.', 'Roasted beetroot, fresh pear, goat cheese', 'Not specified', 28.00, 'https://i.pinimg.com/736x/0f/6c/ec/0f6cec4d8d67c5bae8c4c5173f25c12b.jpg', 4.7, 1),
(5, 'Niçoise Salad', 'A Mediterranean classic featuring flaky tuna, hard-boiled eggs, olives, and crisp green beans.', 'Seared tuna, soft-boiled egg, green beans', 'Not specified', 30.00, 'https://i.pinimg.com/1200x/bc/57/96/bc57960419775f4a2262bc981a6248b8.jpg', 4.7, 1),
(6, 'Penne all''Arrabbiata', 'Tube pasta tossed in a fiery, spicy tomato sauce infused with fresh garlic and chili.', 'Penne pasta, garlic, chili flakes, tomato sauce', 'Not specified', 42.00, 'https://i.pinimg.com/1200x/6f/c1/83/6fc1832f7c9bf740cd87e9d7ae32695c.jpg', 4.7, 2),
(7, 'Penne all''Amatriciana', 'A rich, savory Roman pasta sauce made from cured pork, tomatoes, and sharp pecorino cheese.', 'Penne pasta, cured pork guanciale/pancetta, pecorino', 'Not specified', 48.00, 'https://i.pinimg.com/1200x/48/9e/35/489e35366c57ef95d52c926a42dfa036.jpg', 4.7, 2),
(8, 'Fettuccine al Salmone', 'Flat ribbons of pasta coated in a luxurious, velvety pink cream sauce with flaked salmon.', 'Fettuccine, smoked salmon, heavy cream', 'Not specified', 52.00, 'https://i.pinimg.com/1200x/30/dd/e3/30dde38553261130ada12927d080a31e.jpg', 4.7, 2),
(9, 'Fettuccine Crema e Funghi', 'Comforting egg pasta tossed with earthy sautéed mushrooms in a smooth garlic-cream sauce.', 'Fettuccine, wild mushrooms, cream', 'Not specified', 48.00, 'https://i.pinimg.com/1200x/98/68/4b/98684bf5d20288107ad24e449dd84d6a.jpg', 4.7, 2),
(10, 'Fettuccine al Ragù di Agnello', 'Hearty, deeply savory slow-braised lamb ragù layered over fresh ribbons of pasta.', 'Fettuccine, slow-cooked lamb, red wine', 'Not specified', 62.00, 'https://i.pinimg.com/736x/e8/b9/66/e8b9662b11951dba10e4e325792672b8.jpg', 4.7, 2),
(11, 'Ravioli di Carne ai Funghi', 'Handmade pillows of meat-filled pasta served in a rich, aromatic wild mushroom and butter sauce.', 'Meat-stuffed ravioli, porcini mushrooms, butter', 'Not specified', 68.00, 'https://i.pinimg.com/736x/c9/44/e1/c944e1cc04081fae3b1f7165f36d7a8c.jpg', 4.7, 2),
(12, 'Tortellini di Ricotta e Spinaci', 'Ring-shaped pasta stuffed with creamy spinach and ricotta, finished in a light sage-butter sauce.', 'Tortellini, ricotta, spinach, sage', 'Not specified', 56.00, 'https://i.pinimg.com/1200x/30/50/1a/30501a36c59e796acef72829d376801f.jpg', 4.7, 2),
(13, 'Agnolotti del Plin', 'Traditional pinched pasta parcels from Piedmont filled with savory roasted meats and glazed in jus.', 'Roasted meat filling, veal jus, butter', 'Not specified', 72.00, 'https://i.pinimg.com/1200x/f8/5c/00/f85c00871a2e6c0497958a1e25078f3b.jpg', 4.7, 2),
(14, 'Gnocchi al Gorgonzola e Noci', 'Pillowy soft potato dumplings blanketed in a rich, pungent blue cheese sauce and topped with toasted walnuts.', 'Potato gnocchi, gorgonzola cheese, walnuts', 'Not specified', 58.00, 'https://i.pinimg.com/736x/44/db/a4/44dba46f69f6ab3aae609d15e0b4f46d.jpg', 4.7, 2),
(15, 'Gnocchi alla Bolognese', 'Soft potato gnocchi served with a classic, slow-simmered Italian meat ragù.', 'Potato gnocchi, minced beef and pork, tomatoes', 'Not specified', 52.00, 'https://i.pinimg.com/236x/ec/33/2b/ec332bd46492562c3b2b0aedcf0fd65a.jpg', 4.7, 2),
(16, 'Spaghetti alle Vongole', 'A seaside classic of long pasta tossed with fresh clams, garlic, chili, and a splash of white wine.', 'Spaghetti, fresh clams, white wine, garlic', 'Not specified', 58.00, 'https://i.pinimg.com/1200x/9a/08/d7/9a08d72cfc5b0fed66764fa4787a796a.jpg', 4.7, 2),
(17, 'Capellini all''Aragosta', 'Delicate, fine strands of pasta tossed with sweet, succulent lobster meat in a light tomato-herb broth.', 'Angel hair pasta, lobster meat, cherry tomatoes', 'Not specified', 118.00, 'https://i.pinimg.com/736x/46/88/46/4688467f41e7fc62035f598ad8497196.jpg', 4.7, 2),
(18, 'Lasagna Classica', 'Baked, comforting layers of egg pasta, rich meat ragù, creamy white sauce, and melted cheese.', 'Pasta layers, bolognese, béchamel, mozzarella', 'Not specified', 58.00, 'https://i.pinimg.com/1200x/00/c8/a9/00c8a9ed39118068621788d25481d98f.jpg', 4.7, 2),
(19, 'Risotto ai Funghi', 'Creamy, slow-cooked Italian rice infused with the deep, earthy flavors of wild mushrooms.', 'Arborio rice, mixed mushrooms, parmesan', 'Not specified', 58.00, 'https://i.pinimg.com/736x/6a/ab/1e/6aab1eb4643c76de07d82dfc6f8b6fe7.jpg', 4.7, 2),
(20, 'Risotto di Pesce', 'Luxuriously creamy risotto packed with a medley of fresh seafood and bright mediterranean herbs.', 'Arborio rice, mixed seafood, white wine', 'Not specified', 68.00, 'https://i.pinimg.com/1200x/e1/6e/5e/e16e5e38cd3da782d3bd21d5a29bb7fa.jpg', 4.7, 2),
(21, 'Tuna Steak with Lemon Caper Sauce', 'Perfect pan-seared tuna steak drizzled with a bright, tangy, and salty lemon-caper reduction.', 'Yellowfin tuna, lemon juice, capers', 'Not specified', 78.00, 'https://i.pinimg.com/736x/58/90/fb/5890fb48ed8ada6d13b65318e8052113.jpg', 4.7, 3),
(22, 'Porchetta', 'Savory, moist boneless pork roast rolled with aromatic herbs and roasted until the crackling is perfectly crisp.', 'Pork belly, fennel seeds, garlic, rosemary', 'Not specified', 72.00, 'https://i.pinimg.com/736x/a3/d8/04/a3d804e244d2f6c1ec225c994b905b7b.jpg', 4.7, 3),
(23, 'Chicken Parmigiana', 'Crispy, golden pan-fried chicken cutlet topped with zesty tomato sauce and melted mozzarella.', 'Breaded chicken breast, marinara sauce, mozzarella', 'Not specified', 58.00, 'https://i.pinimg.com/1200x/d6/ea/04/d6ea04de71e5e66abf9390565eafbbc6.jpg', 4.7, 3),
(24, 'Osso Buco alla Milanese', 'Tender, fall-off-the-bone veal shanks braised with vegetables, topped with a zesty lemon-garlic herb toss.', 'Braised veal shanks, white wine, gremolata', 'Not specified', 88.00, 'https://i.pinimg.com/1200x/64/12/c8/6412c824f21e595fc66540a3aa42d462.jpg', 4.7, 3),
(25, 'Saltimbocca alla Romana', 'Thin veal cutlets lined with savory prosciutto and fresh sage, pan-fried in a white wine butter glaze.', 'Veal cutlets, prosciutto, fresh sage', 'Not specified', 82.00, 'https://i.pinimg.com/1200x/19/ab/76/19ab76330c3fd03e319ee60e9377c0c7.jpg', 4.7, 3),
(26, 'Pollo al Limone', 'Tender, juicy chicken cutlets pan-seared in a silky, bright, and refreshing lemon butter sauce.', 'Chicken breast, lemon, white wine, butter', 'Not specified', 56.00, 'https://i.pinimg.com/1200x/31/71/73/317173b98fe4bcfd80bc4f4699a8c24a.jpg', 4.7, 3),
(27, 'Bistecca alla Griglia', 'Fire-grilled premium beef steak seasoned simply with sea salt, cracked pepper, and aromatic herbs.', 'Premium beef steak, rosemary, garlic', 'Not specified', 128.00, 'https://i.pinimg.com/1200x/9e/0c/b6/9e0cb6ab04a0008718b83a6972efd762.jpg', 4.7, 3),
(28, 'Branzino al Forno', 'Fresh whole sea bass baked delicately with Mediterranean herbs, olive oil, and lemon slices.', 'Whole Mediterranean sea bass, herbs, lemon', 'Not specified', 86.00, 'https://i.pinimg.com/1200x/3b/a7/63/3ba763b64bc0dd24b3e5531af1fe6006.jpg', 4.7, 3),
(29, 'Pollo ai Funghi', 'Succulent pan-seared chicken breast smothered in a rich, velvety wild mushroom cream sauce.', 'Chicken breast, wild mushrooms, garlic, cream', 'Not specified', 58.00, 'https://i.pinimg.com/736x/99/2c/89/992c89c878b87a9b8e8e12c39d38030b.jpg', 4.7, 3),
(30, 'Agnello Scottadito', 'Juicy, char-grilled lamb chops marinated in garlic and fresh rosemary—literally translates to "burnt fingers" from eating them hot.', 'Grilled lamb chops, rosemary, garlic', 'Not specified', 98.00, 'https://i.pinimg.com/1200x/e2/1c/12/e21c12e22175846ef40106149e5aff03.jpg', 4.7, 3),
(31, 'Margherita', 'The timeless classic featuring a vibrant tomato base, creamy mozzarella, and fragrant fresh basil leaves.', 'Tomato sauce, fresh mozzarella, basil', 'Not specified', 42.00, 'https://i.pinimg.com/736x/61/89/e1/6189e1a3f01e977cfe36ee3b3e876ca1.jpg', 4.7, 4),
(32, 'Napoletana', 'A savory, salty traditional pie topped with rich tomato sauce, briny anchovies, and capers (no cheese).', 'Tomato sauce, anchovies, capers, oregano', 'Not specified', 42.00, 'https://i.pinimg.com/736x/f6/76/e6/f676e67e713c5e86f2dd8f3ec9935a12.jpg', 4.7, 4),
(33, 'Tonno', 'A coastal favorite combining flaked tuna and sweet, thinly sliced red onions over a cheesy base.', 'Tomato sauce, tuna chunks, onions, mozzarella', 'Not specified', 48.00, 'https://i.pinimg.com/1200x/93/44/3e/93443e7d168dbdfe01244fc2f25cc1f4.jpg', 4.7, 4),
(34, 'Diavola', 'A fiery pizza loaded with slices of spicy Italian pepperoni/salami and crushed chili flakes.', 'Tomato sauce, spicy salami, mozzarella', 'Not specified', 52.00, 'https://i.pinimg.com/1200x/b2/ff/4c/b2ff4cdb4165b9d6a2aac915fc4325ed.jpg', 4.7, 4),
(35, 'Capricciosa', 'A fully loaded, traditional "capricious" pizza offering a savory mix of ham, mushrooms, artichokes, and black olives.', 'Tomato sauce, mozzarella, mushrooms, ham, artichokes, olives', 'Not specified', 56.00, 'https://i.pinimg.com/236x/b8/63/3a/b8633a5cd2c935c1c629bc8c7866aed2.jpg', 4.7, 4),
(36, 'Calzone', 'A spectacular golden, folded crescent-moon pizza turnover stuffed to the brim with oozing cheese and ham.', 'Folded pizza dough, ricotta, ham, mozzarella', 'Not specified', 54.00, 'https://i.pinimg.com/236x/be/22/fe/be22feda81894e96e7e861ba476e7866.jpg', 4.7, 4),
(37, 'Pizza Ciao', 'The signature house pizza loaded with premium cured meats, fresh greens, and artisan cheese.', 'Chef''s special toppings, mozzarella, prosciutto', 'Not specified', 62.00, 'https://i.pinimg.com/1200x/a1/d0/b2/a1d0b20e027eb193c7293123b697e0ce.jpg', 4.7, 4),
(38, 'Ai Fichi', 'A sophisticated balance of sweet and savory combining dried figs, pungent blue cheese, and salty ham strips.', 'Mozzarella, sweet dried figs, gorgonzola, prosciutto', 'Not specified', 58.00, 'https://i.pinimg.com/236x/15/00/bd/1500bde33000062223d54f9217cac2e7.jpg', 4.7, 4),
(39, 'Burrata e Rucola', 'A luxurious white pizza base topped with cold, creamy fresh burrata cheese and peppery arugula after baking.', 'Fresh burrata cheese, wild rocket, cherry tomatoes', 'Not specified', 62.00, 'https://i.pinimg.com/736x/ff/65/a9/ff65a9ea4cbe99d7eba340831f0d5aba.jpg', 4.7, 4),
(40, 'Al Salmone', 'An elegant white-base pizza topped with smoky salmon ribbons, cream, and pops of briny capers.', 'Smoked salmon, mozzarella, capers, cream', 'Not specified', 62.00, 'https://i.pinimg.com/1200x/40/16/07/401607cb1b6e9080e255e6bca3c51a98.jpg', 4.7, 4),
(41, 'Costiera', 'A coastal celebration featuring fresh mixed seafood, garlic, and herbs over a rich tomato base.', 'Mixed seafood, garlic, parsley, tomato sauce', 'Not specified', 68.00, 'https://i.pinimg.com/736x/de/96/5b/de965b6fffac6836bca964564afc0864.jpg', 4.7, 4),
(42, 'Vegetariana', 'A colorful medley of char-grilled garden vegetables laid over a classic cheese and tomato base.', 'Tomato sauce, mozzarella, grilled bell peppers, zucchini, eggplant', 'Not specified', 52.00, 'https://i.pinimg.com/1200x/b0/af/94/b0af9403302893bd9c611741020330fe.jpg', 4.7, 4),
(43, 'Funghi Misti', 'An earthy, savory pie heavily topped with a selection of roasted forest mushrooms and herbs.', 'Tomato sauce, mozzarella, assorted wild mushrooms', 'Not specified', 52.00, 'https://i.pinimg.com/736x/2f/e8/1d/2fe81dba03b75e4c731e211d041b814a.jpg', 4.7, 4),
(44, 'Tropicale', 'The classic sweet-and-savory combo featuring diced juicy pineapples and savory cured ham.', 'Tomato sauce, mozzarella, ham, sweet pineapple', 'Not specified', 48.00, 'https://i.pinimg.com/736x/f4/6d/d5/f46dd5b4121e8ee4bde2809a4d635192.jpg', 4.7, 4),
(45, 'Bianca', 'A minimalist "white pizza" focusing on crisp dough, melting mozzarella, and fragrant rosemary oil.', 'Mozzarella, olive oil, rosemary (no tomato sauce)', 'Not specified', 26.00, 'https://i.pinimg.com/1200x/7d/7c/3e/7d7c3e2cb648c095646e499ee78a2f83.jpg', 4.7, 4),
(46, 'Rossa', 'Simple and rustic; just rich, slow-cooked tomato sauce infused with sliced garlic and wild oregano.', 'Marinara tomato sauce, garlic, oregano (no cheese)', 'Not specified', 24.00, 'https://i.pinimg.com/736x/96/14/a8/9614a8b724c660abdd8a75d148b01507.jpg', 4.7, 4),
(47, 'Tiramisu', 'Layers of coffee-dipped ladyfingers and whipped mascarpone cream, dusted heavily with premium dark cocoa.', 'Mascarpone, espresso, ladyfingers, cocoa', 'Not specified', 28.00, 'https://i.pinimg.com/1200x/6b/49/0c/6b490c27c6e5bc3793008cd9a09c856c.jpg', 4.7, 5),
(48, 'Chocolate Molten Lava Cake', 'A decadent, warm chocolate cake with a rich, oozing liquid chocolate center.', 'Dark chocolate, butter, eggs', 'Not specified', 32.00, 'https://i.pinimg.com/236x/19/86/ed/1986edbbdb53b64d170c2026de24c947.jpg', 4.7, 5),
(49, 'Cannoli', 'Crispy, fried pastry tubes filled with a sweet, creamy sheep''s milk ricotta stuffing.', 'Fried pastry shell, sweet ricotta, chocolate chips', 'Not specified', 24.00, 'https://i.pinimg.com/1200x/f1/38/56/f1385614c92ea4200b289063b4589928.jpg', 4.7, 5),
(50, 'Pear Tarte Tatin', 'An upscale, inverted tart featuring deeply caramelized pears over a buttery, flaky puff pastry crust.', 'Caramelized pears, puff pastry', 'Not specified', 30.00, 'https://i.pinimg.com/736x/8f/2e/35/8f2e35b58ea5d86ade2dcbac43caa298.jpg', 4.7, 5),
(51, 'Panna Cotta', 'A silky, molded chilled cream dessert flavored with vanilla bean and served with a transiently tart berry sauce.', 'Heavy cream, vanilla bean, berry coulis', 'Not specified', 24.00, 'https://i.pinimg.com/736x/41/f1/f8/41f1f85df2a0bc84b5a009b712ac9671.jpg', 4.7, 5),
(52, 'Crème Brûlée', 'A rich, velvety custard base topped with a contrasting layer of hardened, beautifully torched caramelized sugar.', 'Egg yolks, heavy cream, torched sugar', 'Not specified', 26.00, 'https://i.pinimg.com/736x/3c/05/b0/3c05b024c5c51d32ad8eba27cdc6e512.jpg', 4.7, 5),
(53, 'Homemade Gelato (per scoop)', 'Denser and milkier than traditional ice cream, churned in-house for a smooth, velvety texture.', 'Milk, cream, assorted flavors', 'Not specified', 12.00, 'https://i.pinimg.com/736x/7a/da/fc/7adafc8e1a03110bc2817323eb5d2d7e.jpg', 4.7, 5),
(54, 'Sorbetto', 'An intensely refreshing, dairy-free frozen treat made purely from seasonal fresh fruits.', 'Fresh fruit purée, sugar, ice', 'Not specified', 22.00, 'https://i.pinimg.com/736x/62/fe/71/62fe7111d95aeb3a5bd005224e401f6b.jpg', 4.7, 5),
(55, 'Cheese Platter', 'A curated board of Italian cheeses varying from soft to hard, served alongside sweet honey and crisp crackers.', 'Selection of artisanal cheeses, honey, crackers', 'Not specified', 48.00, 'https://i.pinimg.com/736x/91/4f/4e/914f4eebc9af5922082bc9d94011dd28.jpg', 4.7, 5),
(56, 'Espresso', 'A concentrated, bold shot of pure Italian espresso with a thick crema layer.', '', 'Not specified', 10.00, 'https://i.pinimg.com/736x/08/5c/e1/085ce167cbed682128ae1455234f885e.jpg', 4.7, 6),
(57, 'Macchiato', 'A classic shot of rich espresso "marked" with a dollop of warm, frothy milk foam.', '', 'Not specified', 10.00, 'https://i.pinimg.com/736x/ea/3a/c9/ea3ac9030ff78175db4f8e6cda043e55.jpg', 4.7, 6),
(58, 'Americano', 'A smooth, full-bodied black coffee prepared by diluting espresso with hot water.', '', 'Not specified', 10.00, 'https://i.pinimg.com/736x/42/dc/61/42dc61aa66899a5ef2cf4cf145ef9f40.jpg', 4.7, 6),
(59, 'Cappuccino', 'Equal parts espresso, steamed milk, and a thick, luxurious layer of aerated milk foam.', '', 'Not specified', 16.00, 'https://i.pinimg.com/1200x/d3/89/a0/d389a04ccb1fa9f7d720c6979a723c95.jpg', 4.7, 6),
(60, 'Caffè Latte', 'A creamy, comforting coffee made with a shot of espresso topped with plenty of steamed milk.', '', 'Not specified', 16.00, 'https://i.pinimg.com/736x/60/3a/2d/603a2d6569ea8e2e74603111cdc40e30.jpg', 4.7, 6),
(61, 'Mocha', 'A rich, comforting fusion of strong espresso, steamed milk, and sweet dark chocolate syrup.', '', 'Not specified', 18.00, 'https://i.pinimg.com/1200x/1d/ef/45/1def45ce8f7cacba26b29ec94b37bfb8.jpg', 4.7, 6),
(62, 'Hot Chocolate', 'A thick, velvety, and deeply decadent European-style drinking chocolate.', '', 'Not specified', 16.00, 'https://i.pinimg.com/736x/d5/f9/63/d5f9636f55a7a30bfbce5e96c06ea5d5.jpg', 4.7, 6),
(63, 'Tea', 'A selection of premium steeped herbal, green, or black tea leaves.', '', 'Not specified', 12.00, 'https://i.pinimg.com/736x/4d/1d/58/4d1d58ffc1fe0f08d4b9f0e682e6332f.jpg', 4.7, 6),
(64, 'Fresh Juice', 'Ice-cold, 100% freshly squeezed seasonal fruits with no added sugar.', '', 'Not specified', 16.00, 'https://i.pinimg.com/736x/02/56/ab/0256abe44a6b4786d6bdec6b84372f0a.jpg', 4.7, 6),
(65, 'Soft Drinks', 'A chilled selection of standard carbonated sodas to refresh the palate.', '', 'Not specified', 12.00, 'https://i.pinimg.com/736x/68/eb/a2/68eba25efe0554a209fc83bdbae6e050.jpg', 4.7, 6);