1️⃣ Slide-by-Slide Outline
“How Security Incidents Actually Happen (Human Factors)”

Rule for students:
Slides support the story. You tell the story.


Slide 2 — Thesis

Most incidents are not caused by ignorance.
They are caused by:
    time pressure
    partial information
    reasonable shortcuts

Say out loud:
  “This talk is about how failures happen, not who to blame.”

Slide 3 — The Incident Pattern
Visual: simple 5-step loop
    Urgency
    Temporary exception
    Assumption of coverage
    Missing verification
    Delayed impact

Key line:
  “The failure happens in the gaps between systems.”


Slide 4 — AWS Example: The Temporary IAM Exception
Bullet anchors only:
    Blocked deployment
    Expanded permissions
    Intended rollback
    Rollback never happens

Say:
  “Nothing broke immediately — which is why it was dangerous.”

Slide 5 — Why This Is Human, Not Stupid
Bullets:
    Success bias
    Context switching
    No negative feedback loop

Key line:
  “The system never tells you when you forgot to fix something.”

Slide 6 — AWS Guardrails That Humans Route Around

Bullets:
    SCP exception granted
    Scope misunderstood
    Control exists elsewhere

Say:
  “Security didn’t fail — assumptions did.”


Slide 7 — Kubernetes Example: OPA in the Wrong Namespace
Bullets:
    OPA installed
    Policy correct
    Namespace mismatch
    No verification

Key line:
  “Security was real — just not where it mattered.”

Slide 8 — Kubernetes Example: Audit-Only OPA
Bullets:
    Audit mode
    Logs generated
    No alerting
    No owner

Say:
  “Audit without action is documentation, not protection.”

Slide 9 — Meta-Pattern

Table:

| Humans Assume | Systems Do          |
| ------------- | ------------------- |
| Coverage      | Partial enforcement |
| Temporary     | Persistent          |
| Logged = safe | Silent failure      |


Slide 10 — What Actually Prevents Incidents
Bullets:
    Pre-deploy checks
    Fail-closed defaults
    Scoped permissions
    Explicit rollback ownership

Say:
  “Security improves when systems expect human error.”

Slide 11 — Consulting Takeaway

Big text:
  Design systems that fail safely when humans are rushed.


Slide 12 — Summary
Bullets:
    Incidents are predictable
    Humans are part of the system
    Verification beats intention

Optional humor:
  “Most breaches start with someone trying to be helpful.”

  
