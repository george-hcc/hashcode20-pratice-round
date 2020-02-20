def main():
    max_slices, plist_len = list(map(int, input().split()))
    pizza_list = list(map(int, input().split()))
    best_score, best_blist = recursive_alg(max_slices,
                                           0,
                                           [],
                                           0,
                                           [],
                                           pizza_list)
    print(best_score, best_blist)

def recursive_alg(max_slices,
                  best_score,
                  best_blist,
                  score,
                  blist,
                  plist):
    # Print state for debug
    print(max_slices, best_score, best_blist, score, blist, plist)
    # Check if reached end of tree
    if not plist:
        if score > best_score:
            return score, blist
        else:
            return best_score, best_blist
    # Check if its optimal
    if score == max_slices:
        return criteria, [False]*len(plist) + blist
    # Normal loop
    for index, pitem in reversed(list(enumerate(plist))):
        criteria = score + pitem
        # The combination's score pop'd out
        if criteria > max_slices:
            continue
        # Inconclusive result, continues recursively
        elif criteria < max_slices:
            partoff_blist = [False]*(len(plist)-index+1)
            partoff_blist = [True] + partoff_blist
            temp_score, temp_blist = recursive_alg(max_slices,
                                                   best_score,
                                                   best_blist,
                                                   criteria,
                                                   partoff_blist + blist,
                                                   plist[0:index])
            if temp_score > best_score:
                best_score, best_blist = temp_score, temp_blist
            continue        
    return best_score, best_blist    

if __name__ == '__main__':
    main()
