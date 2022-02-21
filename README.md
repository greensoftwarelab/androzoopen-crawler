# AndroZooOpenCrawler

Crawler to extract Android Apps' code and related information contained in the AndroZooOpen[1] from Open Source Repositories.

## Supported Repositories
- GitHub
- F-Droid (soon)
- ...

## Requirements:
    - *Nix based environment/OS;
    - Python >=3;
    - Scrapy (pip install scrapy);
    - wget and curl.

## CONFIG 
The crawler can be configured to filter apps according to certain criteria. Some of the supported criteria are contained in the config.json file and the nomenclature make its purpose kinda self-explanatory.

```
{
    "github": {
        "username": "<your-github-username-here>"
    },
    "output_dir": "out",
    "input_file": "in/androzooopen.csv",
    "releases_per_app_to_download" : 1,
    "filters": {
        "num_releases" : {
            "min" : 3,
            "max" : 5
        },
        "on_googleplay": {
            "value": "Yes"
        },
        "data_source": {
            "value": "github"
        }
    }
}

```



## RUN 

```

$ python3 src/main.py 

```

[1] - Pei Liu, Li Li, Yanjie Zhao, Xiaoyu Sun, and John Grundy. 2020. 
AndroZooOpen: Collecting Large-scale Open Source Android Apps for the Research Community.
Proceedings of the 17th International Conference on Mining Software Repositories. Association for Computing Machinery,
New York, NY, USA, 548–552. DOI:https://doi.org/10.1145/3379597.3387503
