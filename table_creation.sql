----LEGO PARTS TABLE CREATION----

SELECT *
FROM TIL_PORTFOLIO_PROJECTS.STAGING.LEGO_PARTS
LIMIT 10;

-- Check column character length, for varchar() length
SELECT MAX(LENGTH(NAME))
from TIL_PORTFOLIO_PROJECTS.STAGING.LEGO_PARTS;

CREATE OR REPLACE TABLE TIL_PORTFOLIO_PROJECTS.RDD_LEGO.LEGO_PARTS (
PART_NUMBER VARCHAR(15),
PART_NAME VARCHAR(223),
PART_CATEGORY_ID INTEGER 
);

CREATE OR REPLACE TABLE TIL_PORTFOLIO_PROJECTS.RDD_LEGO.LEGO_PART_CATEGORIES (
PART_CAT_NAME VARCHAR(108),
PART_CAT_ID INTEGER
);

 
 CREATE OR REPLACE TABLE til_portfolio_projects.RDD_LEGO.lego_themes (
THEME_ID INTEGER,
THEME_NAME VARCHAR(32),
THEME_PARENT_ID INTEGER
);


CREATE OR REPLACE TABLE til_portfolio_projects.RDD_LEGO.lego_inventory_parts (
INVENTORY_ID INTEGER,
PART_NUM VARCHAR(255),
COLOR_ID INTEGER,
QUANTITY INTEGER,
IS_SPARE VARCHAR(255)
);

CREATE OR REPLACE TABLE til_portfolio_projects.RDD_LEGO.lego_sets(

    set_number varchar(16),
    set_name varchar(95),
    year integer,
    theme_id integer,
    num_parts integer
);

CREATE OR REPLACE TABLE  til_portfolio_projects.RDD_LEGO.lego_sets.inventories (
    id integer,
    version integer,
    set_num varchar(16)
);


CREATE OR REPLACE TABLE til_portfolio_projects.RDD_LEGO.lego_inventory_sets (
    Inventory_ID INTEGER,
    Set_Number VARCHAR(10),
    Quantity INTEGER

);

CREATE OR REPLACE TABLE til_portfolio_projects.RDD_LEGO.lego_colors (

    color_id integer,
    color_name varchar(28),
    color_rgb varchar(6),
    color_is_trans varchar(1)
);

