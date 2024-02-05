for trcfile in tautrace.*.0.0.trc; do
    edffile="${trcfile/tautrace/events}"
    edffile="${edffile/.0.0.trc/.edf}"
    outputfile="${trcfile/.0.0.trc/_lu.slog2}"
    tau2slog2 "$trcfile" "$edffile" -o "$outputfile"
done
