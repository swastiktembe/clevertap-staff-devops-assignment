# CrashLoopBackOff Runbook

1. Check pod logs
2. Check recent deployment
3. Check memory/CPU usage

Decision:
- Rollback if new deploy
- Scale if resource issue
