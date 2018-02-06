# meya-scripter

## Schema

### Flow

| Column Name   | Data Type     | Details |
| ------------- |:-------------:| -----:  |
| id            | integer       | not null, primary key |
| name          | string        | not null |

### State

| Column Name   | Data Type     | Details |
| ------------- |:-------------:| -----:  |
| id            | integer       | not null, primary key |
| flow_id       | integer       | not null |
| component     | string        | not null |
| return        | boolean       | default: false |
| name          | string        | not null |
| image_url     | string        | optional |

### Button

| Column Name   | Data Type     | Details |
| ------------- |:-------------:| -----:  |
| id            | integer       | not null, primary key |
| property_id   | integer       | not null | 
| flow_id       | integer       | optional | <!-- flow -->
| transition_id | string        | not null | <!-- action -->
| text          | string        | not null |
| url           | string        | not null |

### Property

| Column Name   | Data Type     | Details |
| ------------- |:-------------:| -----:  |
| id            | integer       | not null, primary key |
| state_id      | integer       | not null |
| text          | string        | optional |
| output        | string        | optional |
| key           | string        | optional |
| scope         | string        | optional |

### Transition

| Column Name   | Data Type     | Details |
| ------------- |:-------------:| -----:  |
| id            | integer       | not null, primary key |
| state_id      | integer       | not null |
| key           | string        | not null |
| value         | string        | not null |
