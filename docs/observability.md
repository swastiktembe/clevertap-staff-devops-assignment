# Observability Strategy

## Pillars

### Metrics
- Amazon Managed Prometheus

### Logs
- CloudWatch → OpenSearch

### Traces
- OpenTelemetry → New Relic, DataDog or AWS X-Ray

### Events
- EventBridge

---

## Data Flow
Collection → Aggregation → Storage → Alerting

---

## Alerting Strategy

### Problem:
- 200+ alerts/day
- 60% auto-resolving

### Solution:
- SLO-based alerting

Example:
- Alert only if error budget burn > 2% over 1 hour

---

## Cardinality Management
- Avoid high-cardinality labels (user_id, request_id)
- Use aggregation at service level

---

## Noise Reduction Strategy
- Remove flapping alerts
- Introduce alert grouping
- Deduplicate alerts

- I was able to implement similar within morningstar
