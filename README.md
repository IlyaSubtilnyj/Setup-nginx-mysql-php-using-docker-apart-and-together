nginx configuration: https://www.nginx.com/blog/deploying-nginx-nginx-plus-docker/
mysql configuration: https://hevodata.com/learn/docker-mysql/
php compose configuration: https://medium.com/@tech_18484/deploying-a-php-web-app-with-docker-compose-nginx-and-mariadb-d61a84239c0d https://medium.com/@chrischuck35/how-to-create-a-mysql-instance-with-docker-compose-1598f3cc1bee


fastcgi: FastCGI is a protocol that defines how a web server, such as Nginx, communicates with a CGI program, like PHP, about the requests it receives. It is an extension of the Common Gateway Interface (CGI) and is meant to improve performance by not running each request in a separate process. Instead of starting a new process with every request, FastCGI processes are started when the web server starts and remain active to handle multiple requests. The fastcgi_pass directive in Nginx is used to pass requests to a FastCGI server, which can be a Unix domain socket or an IP address and port. For example, fastcgi_pass unix:/var/run/php5-fpm.sock; or fastcgi_pass 127.0.0.1:9000;2
3
. In summary, fastcgi_pass is a directive in Nginx configuration that specifies the FastCGI server to which Nginx should pass the request for processing.
