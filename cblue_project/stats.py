from __future__ import annotations

from math import erf, sqrt


def _normal_cdf(x: float) -> float:
    return (1.0 + erf(x / sqrt(2.0))) / 2.0


def mann_whitney_u(a: list[float], b: list[float]) -> dict[str, float | str]:
    try:
        from scipy.stats import mannwhitneyu

        result = mannwhitneyu(a, b, alternative="two-sided")
        u = float(result.statistic)
        p_value = float(result.pvalue)
        method = "scipy.stats.mannwhitneyu"
    except Exception:
        values = [(value, "a") for value in a] + [(value, "b") for value in b]
        values.sort(key=lambda item: item[0])
        ranks: list[tuple[float, str]] = []
        i = 0
        while i < len(values):
            j = i + 1
            while j < len(values) and values[j][0] == values[i][0]:
                j += 1
            avg_rank = (i + 1 + j) / 2
            ranks.extend((avg_rank, group) for _, group in values[i:j])
            i = j
        rank_sum_a = sum(rank for rank, group in ranks if group == "a")
        n1, n2 = len(a), len(b)
        u = rank_sum_a - n1 * (n1 + 1) / 2
        mean_u = n1 * n2 / 2
        std_u = sqrt(n1 * n2 * (n1 + n2 + 1) / 12)
        z = (u - mean_u) / std_u if std_u else 0.0
        p_value = 2 * (1 - _normal_cdf(abs(z)))
        method = "normal approximation fallback"

    return {
        "u_statistic": round(u, 4),
        "p_value": round(p_value, 6),
        "significant_at_0.05": "yes" if p_value < 0.05 else "no",
        "method": method,
    }


def demo_model_scores() -> dict[str, list[float]]:
    return {
        "chinese-bert-wwm-ext": [0.842, 0.851, 0.858, 0.847, 0.861],
        "rule_dictionary_baseline": [0.684, 0.693, 0.701, 0.688, 0.697],
    }

