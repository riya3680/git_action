{% snapshot snp_dim__network_monthly %}  

{{    
  config(      
    target_database='subdm_collinson_inventory_dh',
    target_schema='snapshots',
    strategy='check',      
    unique_key='id',      
    check_cols=['outlet_id', 'outlet_program_code'],
    enabled=(true)    
  )  
}}  

select * 
from {{ ref('dim__network_monthly') }}

{% endsnapshot %}