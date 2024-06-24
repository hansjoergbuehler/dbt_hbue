select date as DateID, * 
from {{ ref('silver_date') }}