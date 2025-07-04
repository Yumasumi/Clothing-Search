
# ClothingSearch - 商品查詢實作

這是一個以 Java Servlet + JSP + JDBC 實作的簡易商品查詢系統，使用 MVC 架構開發，並透過 MySQL 資料庫儲存商品資訊。

## 專案架構 (MVC)

- Controller：`ProductSearchServlet.java`
- Model：`Product.java`, `ProductDAO.java`，使用 JDBC 操作 MySQL。
- View：`search.jsp`

---

## 專案結構

```
ClothingSearch/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   ├── controller/ProductSearchServlet.java
│   │   │   └── model/{Product.java, ProductDAO.java}
│   │   ├── resources/db.properties
│   │   └── webapp/
│   │       ├── search.jsp
│   │       └── WEB-INF/web.xml
├── pom.xml
├── .gitignore
└── README.md
```

---

## 使用方法

### 1. 匯入專案
- 使用 IntelliJ IDEA 開啟本專案。
- 安裝 Tomcat Plugin 或手動設定 Tomcat server。

### 2. 設定資料庫連線

修改 `src/main/resources/db.properties`：

```properties
db.url=jdbc:mysql://localhost:3306/fashion_store?useSSL=false&serverTimezone=UTC
db.user=root
db.password=你的密碼
```

### 3. 建立資料庫與資料表

在 MySQL 中匯入 docs/init_fashion_store.sql

---

## 執行方式

1. 使用 Maven 打包：

```bash
mvn clean package
```

2. 將產生的 `target/clothing-search.war` 部署到 Tomcat 的 `webapps` 資料夾

3. 啟動 Tomcat 並訪問：

```
http://localhost:8080/clothing-search/search.jsp
```

---

## 功能介紹

- 關鍵字搜尋商品（根據「商品名稱」或「分類」模糊查詢）
- 顯示商品資訊：
  - 商品名稱、分類、風格、價格、剩餘數量、顏色、尺寸、商品描述

