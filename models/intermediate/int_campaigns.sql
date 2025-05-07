{{ dbt_utils.union_relations(
    relations=[ 
        ref("stg_raw_adwords"),
        ref("stg_raw_bing"),
        ref("stg_raw_criteo"),
        ref("stg_raw_facebook")
    ]
) }}


