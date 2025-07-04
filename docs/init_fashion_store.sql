CREATE DATABASE IF NOT EXISTS fashion_store;
USE fashion_store;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    style VARCHAR(100),
    price DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    color VARCHAR(50),
    size VARCHAR(10),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 短袖上衣
INSERT INTO products (name, category, style, price, stock, color, size, description) VALUES
('純棉短袖T恤', '短袖上衣', '基本款', 399.00, 50, '白色', 'M', '舒適透氣的純棉材質，夏日必備。'),
('印花T恤', '短袖上衣', '街頭風', 499.00, 30, '黑色', 'L', '前胸有大圖印花，個性十足。');

-- 短褲
INSERT INTO products (name, category, style, price, stock, color, size, description) VALUES
('休閒棉短褲', '短褲', '經典款', 459.00, 20, '灰色', 'L', '舒適剪裁，適合運動與日常穿搭。'),
('破洞牛仔短褲', '短褲', '潮流款', 599.00, 15, '藍色', 'M', '破損設計展現街頭時尚。');

-- 長褲
INSERT INTO products (name, category, style, price, stock, color, size, description) VALUES
('彈性牛仔褲', '長褲', '修身版', 899.00, 10, '深藍', 'M', '高彈性材質，舒適不緊繃。'),
('寬褲', '長褲', '韓系風', 799.00, 12, '米色', 'S', '落地寬褲，顯瘦又時髦。');

-- 洋裝（三種）
INSERT INTO products (name, category, style, price, stock, color, size, description) VALUES
('碎花洋裝', '洋裝', '甜美風', 1080.00, 8, '粉紅', 'M', '雪紡面料，夏日氣質首選。'),
('襯衫洋裝', '洋裝', '氣質通勤', 1280.00, 5, '白色', 'L', '適合上班族的俐落風格。'),
('無袖洋裝', '洋裝', '簡約設計', 980.00, 10, '黑色', 'S', '百搭基本款，搭配外套更有層次。');

-- 外套
INSERT INTO products (name, category, style, price, stock, color, size, description) VALUES
('丹寧外套', '外套', '牛仔風', 1390.00, 6, '藍色', 'M', '經典不敗的丹寧風格。'),
('風衣外套', '外套', '日系休閒', 1580.00, 4, '卡其', 'L', '春秋必備，防風又好搭。');
