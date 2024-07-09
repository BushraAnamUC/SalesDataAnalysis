

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    Cost DECIMAL(10, 2)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Age INT,
    Gender CHAR(1),
    RegionID INT
);

CREATE TABLE SalesRegions (
    RegionID INT PRIMARY KEY,
    RegionName VARCHAR(50)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Date DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

