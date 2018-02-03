# meya-scripter

## Schema

### Flow

| Column Name   | Data Type     | Details |
| ------------- |:-------------:| -----:  |
| id            | integer       | not null, primary key |
| name          | string        | not null |
| component     | string        | not null |

### State

| Column Name   | Data Type     | Details |
| ------------- |:-------------:| -----:  |
| id            | integer       | not null, primary key |
| flow_id       | integer       | not null |
| return        | boolean       | default: false |
| name          | string        | not null |
| flow          | string        | optional |
| component     | string        | optional |
| text          | string        | optional |
| image_url     | string        | optional |

### Buttons

| Column Name   | Data Type     | Details |
| ------------- |:-------------:| -----:  |
| id            | integer       | not null, primary key |
| state_id      | integer       | not null |
| text          | integer       | not null |
| action        | integer       | optional |
| flow          | integer       | optional |

### Properties

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
