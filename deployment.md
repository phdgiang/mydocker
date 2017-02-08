# Servers System
Inline-style:
![Crawler Archtecture](https://github.com/beyondborders/property-crawler/blob/develop/CrawlerArchtecture.png "Crawler Archtecture")

# Server Crawler installation
* Environment requirement
    * CentOS >= 6.8
    * Python: 3.5
    * NodeJS/PhantonJS
    * Gearman client
* Steps to setup:
    *   Please check file: `crawler-dockerfile`
    *   Server working user: `hnsys`
    *   Server working folder: `/home/hnsys/property-crawler`
    *   Gearmand client should connect to Gearmand server from beginning
        `cd /home/hnsys/property-crawler`    
        `gearman -w -h ${GEARMAND_HOST} -f crawl -- ./spider_worker.py`    
# Web Admin installation
* Environment requirement
    * Web Admin using laravel boilerplate, so the environment requirement/setup is similar:
        `https://github.com/takaaki-mizuno/laravel-boilerplate`    
    * MongoDB 3.4

* Steps to setup:
    *   Please check file: `crawler-admin-dockerfile`
    *   Server working user: `hnsys`
    *   Server working folder: `/var/www/property-crawler-admin`
    *   Run init script to setup environment:
        `cd /var/www/property-crawler-admin`    
        `./init-crawler-admin.sh`    
    It will:    
        *   Create .env file from .env.example
        *   Replace MySQL Host/Port accordingly
        *   Replace Gearmand server host/port accordingly
        *   Create App key
        *   Init database structure and database seed
        *   Install npm/gulp
# Gearmand installation
* Environment requirement
    * CentOS >= 6.8
* Steps to setup:
    * `yum install gearmand`