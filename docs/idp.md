# Internal Developer Platform (IDP)

## Problem

Currently teams depend on DevOps for infra provisioning which slows down development.

Goal is to enable self service infra without compromising security or cost.

---

## Approach

Expose pre-built terraform modules via a simple interface.

Instead of giving raw AWS access, developers use:
- predefined templates
- limited options

Example:
- spin up database
- create queue
- create cache

---

## How it works

1. Developer triggers request (via UI / Git repo)
2. Pipeline runs terraform using approved modules
3. Resources are created in isolated namespace/account

---

## Guardrails

### Security

- IAM roles with limited permissions
- no direct AWS access
- only approved modules allowed

---

### Cost Control

- default sizing (no large instances)
- budget per team
- auto shutdown after some time (TTL)

---

### Isolation

- separate namespace per feature
- tagging enforced (team, env, owner)

---

## Cleanup

- resources auto deleted after TTL (24–48 hrs)
- avoids unused infra cost

---

## Why this works

- developers get speed (no waiting)
- DevOps keeps control
- cost and security are managed centrally
