How Security Incidents Actually Happen (Human Factors)
(Example Presentation Content)

1️⃣ Opening Frame (First 2–3 Minutes)
Core thesis (say this early):

“Most security incidents don’t happen because people don’t know what to do.
They happen because humans make reasonable decisions under pressure — and systems don’t forgive those decisions.”

This immediately:
  removes blame
  reframes security as a systems problem
  signals consulting maturity

2️⃣ The Pattern Behind Most Incidents
Across cloud and Kubernetes environments, incidents follow a repeatable pattern:
  Time pressure
  Partial understanding
  Implicit trust in automation
  Missing verification
  Silent failure until impact

Tools are present.
Controls exist.
The failure is human + system interaction.

3️⃣ AWS Example #1 — “The Helpful Temporary Exception”
Scenario

An engineer needs to unblock a deployment quickly.
They:
    temporarily widen an IAM policy
    intend to revert it later
    deploy successfully
    forget the rollback

Why This Happens (Human Factors)
    The request feels low-risk
    The change is “temporary”
    Success bias (“it worked, so it’s fine”)
    No immediate negative feedback

Technical Reality (Amazon Web Services)
    Over-permissive IAM policies persist silently
    No built-in expiration unless enforced
    Logs exist but aren’t actively reviewed
    Access is abused weeks later — unrelated to the original change

Key Insight to Say Aloud
  “The mistake wasn’t granting access — it was not designing for rollback.”

  4️⃣ AWS Example #2 — Guardrails Exist, But Humans Route Around Them
Scenario
    AWS Organizations SCPs restrict certain actions
    A team requests an exception for a special workload
    Exception is granted at a higher OU
    Scope is broader than intended

Human Factors
    Approval pressure from leadership
    Misunderstanding blast radius
    SCPs are abstract and hard to visualize
    Success is measured by speed, not safety

Incident Result
    Controls still exist — just not where needed
    Security believes guardrails are in place
    Reality diverges from expectation

Consulting Line (Very Strong)
  “Controls that require constant human memory are not controls — they are intentions.”

  5️⃣ Kubernetes Example #1 — OPA Applied Correctly… to the Wrong Namespace
Scenario
    Organization uses OPA / Gatekeeper
    Policy enforces image provenance and security context
    Policy is deployed only to default namespace
    Production workloads run in prod-* namespaces

Why This Happens (Human Factors)
    Namespace sprawl
    Assumption that “OPA is enabled”
    Copy-paste manifests
    No verification step in CI/CD

Technical Reality (Kubernetes)
    OPA is namespace-scoped unless explicitly enforced cluster-wide
    Admission control silently allows non-compliant workloads
    The system is “secure” on paper

Critical Interview Insight
  “Security controls that are not verified continuously are indistinguishable from controls that don’t exist.”

  6️⃣ Kubernetes Example #2 — OPA Applied, but Not Enforced
Scenario
    OPA policies are deployed in audit mode
    Violations are logged but not blocked
    Team believes enforcement is active
    No alerting on audit violations

Human Factors
    Fear of breaking workloads
    “We’ll enforce later
    Log fatigue
    No ownership of enforcement transition

Incident Result
    Policies technically exist
    Nothing prevents unsafe deployments
    Post-incident discovery reveals months of violations

Strong Line for the Panel
  “Audit-only security gives a false sense of safety unless someone is accountable for acting on it.”

7️⃣ The Meta-Pattern (This Is the Money Slide)

Across AWS and Kubernetes incidents:
| Human Factor        | System Reality      |
| ------------------- | ------------------- |
| “Temporary” changes | Permanent effects   |
| Assumed coverage    | Partial enforcement |
| Implicit trust      | Silent failure      |
| Speed rewarded      | Safety deferred     |
| Logs exist          | No one is watching  |

Security fails between tools, not inside them.

8️⃣ What Actually Prevents These Incidents

Not more tools.
Not more dashboards.

But:
  Pre-deployment verification
  Scoped defaults
  Guardrails that fail closed
  Ownership of rollback
  Evidence, not assumptions

9️⃣ Summary / Conclusion Slide
You can end with this verbatim:
  “Security incidents happen when reasonable humans interact with unforgiving systems.
  The solution isn’t blaming people — it’s designing systems that assume human error and limit blast radius.”

That lands extremely well with:
  managers
  senior engineers
  customer-facing teams

Concluding Joke (Safe, Works)

“Most breaches don’t start with hackers — they start with someone trying to be helpful on a Tuesday.”

Light, human, memorable.
