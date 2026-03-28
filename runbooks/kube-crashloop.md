# Runbook: KubePodCrashLooping

## Step 1: Initial Checks
1. kubectl get pods
2. kubectl describe pod <pod>
3. kubectl logs <pod>

---

## Step 2: Identify Root Cause

### Common Causes:
- OOMKilled
- Config error
- Dependency failure (Kafka)

---

## Step 3: Decision Tree

### If recent deploy:
→ Rollback

### If resource issue:
→ Scale up / increase memory

### If dependency issue:
→ Check Kafka health

---

## Step 4: Escalation

Escalate if:
- Issue persists > 15 mins
- Multiple services impacted

---

## Communication

---

## PIR Should Include:
- Root cause
- Time to detect
- Time to resolve
- Preventive actions
