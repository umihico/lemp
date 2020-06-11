.
├── lemp
│   ├── .git ()
│   ├── .gitignore
│   ├── build.sh
│   ├── docker-compose.yml
│   ├── dockerfiles
│   │   └── php
│   │       └── Dockerfile
│   ├── init_ec2.sh
│   ├── init_ec2_scripts.sh
│   ├── letsencrypt
│   │   ├── fullchain.pem
│   │   └── privkey.pem
│   ├── mysql // gitignored volume
│   ├── mysql.env
│   └── nginx
│       ├── conf.d
│       │   └── default.conf
│       ├── nginx.conf
│       └── sites-available
│           ├── portfolios.umihi.co.conf
│           └── umihi.co.conf
├── portfolios.umihi.co //Laravel project
│   └── .git
└── umihi.co //Laravel project
    └── .git
